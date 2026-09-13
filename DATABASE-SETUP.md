# Setting up the database

The site is a static file, so it cannot store anything by itself. Feedback,
customer accounts and order history all need a database you own.

This is one setup session of about twenty minutes and costs nothing at your
volume. Do it once and all three features work.

Until it is done, nothing is half-working: the feedback section does not
appear on the site, and the admin panel says it is not set up.

---

## 1. Make the project

1. Go to **supabase.com**, create an account, then a new project.
2. Pick a region close to Lebanon. Frankfurt is the usual choice.
3. It gives you a database password during setup. That is **not** the password
   you use to sign in later. Save it somewhere and forget about it.

## 2. Make your own login first

**Authentication -> Users -> Add user.** Use your email and a **strong password
you do not use anywhere else**.

Do not reuse the site passcode (`fyn2026`). That one is printed in your page
and anyone can read it.

Nothing to copy from here. The SQL in the next step already knows this address.

## 3. Make the tables

Open **SQL Editor**, paste all of this exactly as it is, and
run it. Nothing in it needs changing.

```sql
-- Who the owner is. Keyed to your email, so there is nothing to look up
-- and nothing to paste in. Change the address here if you ever change it.
create or replace function is_owner() returns boolean language sql stable as $$
  select coalesce((auth.jwt() ->> 'email') = 'omardrayie@gmail.com', false);
$$;

-- ---------------------------------------------------------------- feedback
create table feedback (
  id          uuid primary key default gen_random_uuid(),
  created_at  timestamptz not null default now(),
  name        text not null,
  cookie      text,
  rating      int,
  message     text not null
);
alter table feedback enable row level security;

-- Anyone on the website may LEAVE feedback, within these limits. The limits
-- are here and not only in the page, because anything checked in the page can
-- be bypassed by editing it.
create policy "anyone may leave feedback"
  on feedback for insert to anon
  with check (
    char_length(name) between 1 and 60
    and char_length(message) between 1 and 1000
    and (cookie is null or char_length(cookie) <= 60)
    and (rating is null or rating between 1 and 5)
  );

-- ONLY YOU may read it. Not "anyone signed in": once customers have accounts,
-- that would let every customer read everybody's feedback.
create policy "only the owner reads feedback"
  on feedback for select to authenticated using (is_owner());

-- ---------------------------------------------------------------- profiles
-- A customer's saved name and address, so they do not retype them.
create table profiles (
  id          uuid primary key references auth.users on delete cascade,
  name        text,
  address     text,
  updated_at  timestamptz not null default now()
);
alter table profiles enable row level security;

create policy "a customer reads only their own details"
  on profiles for select to authenticated using (auth.uid() = id or is_owner());
create policy "a customer creates only their own details"
  on profiles for insert to authenticated with check (auth.uid() = id);
create policy "a customer edits only their own details"
  on profiles for update to authenticated using (auth.uid() = id);

-- ---------------------------------------------------------------- orders
create table orders (
  id          uuid primary key default gen_random_uuid(),
  user_id     uuid not null references auth.users on delete cascade,
  created_at  timestamptz not null default now(),
  items       jsonb not null,
  area        text,
  code        text,
  subtotal    numeric(10,2) not null,
  discount    numeric(10,2) not null default 0,
  delivery    numeric(10,2) not null default 0,
  total       numeric(10,2) not null
);
alter table orders enable row level security;

create policy "a customer reads only their own orders"
  on orders for select to authenticated using (auth.uid() = user_id or is_owner());
create policy "a customer records only their own orders"
  on orders for insert to authenticated with check (auth.uid() = user_id);
```

Nothing above lets anyone change or delete a record, and no customer can read
another customer's anything. That is what "they cannot see what I can see"
means in practice.

## 4. Send me two values

**Settings -> API.**

- **Project URL**, looks like `https://abcdefgh.supabase.co`
- **anon / public** key, a long string starting `eyJ...`

Send me both. The anon key is **designed to be public** and is safe in the
page, because the policies above are what protect the data, not the key.

**Never send or paste the `service_role` key.** That one ignores every policy
above, and this file is readable by anyone who opens your website.

---

## What each feature does once it is on

**Feedback.** A "How was your box?" section appears after the order section.
Name, which cookie, a rating out of five, a message. Nothing is ever shown on
the public site. You read it in `#admin`, in the Feedback block, after signing
in with the account from step 2. A hidden trap field catches basic bots.

**Accounts.** A customer can sign up, and then their name and address fill
themselves in on the receipt instead of being retyped. Signing in is optional:
somebody who does not want an account can still order exactly as they do now.

**Order history.** When a customer taps the order button, the box is recorded
against their account so they can see what they ordered before, and so you can
see it too. Note that this records the box they built and copied. If they never
actually send you the message, the record still exists, so treat it as
"boxes built" rather than confirmed orders.

## Turning it off

Blank out `FEEDBACK_URL` and `FEEDBACK_KEY` in the CONFIG block of
`index.html`. Every one of these features disappears from the site and the
admin panel goes back to saying it is not set up. The data stays in the
database.
