# Turning the feedback form on

The site is a static file, so it cannot store anything by itself. The form
posts to a database you own. Until you do the four steps below, the feedback
section does not appear on the site at all, and the admin panel says it is not
set up. Nothing is half-working in the meantime.

This takes about fifteen minutes and costs nothing at your volume.

---

## 1. Make the project

1. Go to **supabase.com** and create an account, then a new project.
2. Pick a region close to Lebanon (Frankfurt is the usual choice).
3. It gives you a database password during setup. That is **not** the password
   you will use to read feedback. Save it somewhere safe and forget about it.

## 2. Make the table and lock it down

Open **SQL Editor** in the Supabase sidebar, paste all of this, and run it.

```sql
create table feedback (
  id          uuid primary key default gen_random_uuid(),
  created_at  timestamptz not null default now(),
  name        text not null,
  cookie      text,
  rating      int,
  message     text not null
);

-- Nothing is readable or writable until a policy says so.
alter table feedback enable row level security;

-- Anyone on the website may LEAVE feedback, within these limits.
-- The limits are here and not only in the page, because anything checked in
-- the page can be bypassed by editing it.
create policy "anyone may leave feedback"
  on feedback for insert to anon
  with check (
    char_length(name) between 1 and 60
    and char_length(message) between 1 and 1000
    and (cookie is null or char_length(cookie) <= 60)
    and (rating is null or rating between 1 and 5)
  );

-- Only a signed-in account may READ it. No customer can ever read another
-- customer's feedback, and no policy allows changing or deleting it.
create policy "only a signed in account may read"
  on feedback for select to authenticated
  using (true);
```

## 3. Make your login

**Authentication -> Users -> Add user.** Use your email and a **strong password
you do not use anywhere else**. This is the one you type into the admin panel.

Do not reuse the site passcode (`fyn2026`). That one is published in the page
and anyone can read it.

## 4. Send me two values

**Settings -> API.**

- **Project URL**, looks like `https://abcdefgh.supabase.co`
- **anon / public** key, a long string starting `eyJ...`

Send me both. The anon key is **designed to be public** and is safe in the
page, because the policies above are what protect the data, not the key.

**Never send or paste the `service_role` key.** That one ignores every policy
above, and this file is readable by anyone who opens your website.

---

## What it does once it is on

- A "How was your box?" section appears after the order section. Name, which
  cookie, a rating out of five, and a message.
- Submissions go straight to your database. **Nothing is ever shown on the
  public site.**
- You read them in `#admin`, in the Feedback block at the top, after signing in
  with the account from step 3.
- A hidden trap field catches basic bots before anything is sent.

## If you want to turn it off again

Blank out `FEEDBACK_URL` and `FEEDBACK_KEY` in the CONFIG block of
`index.html`. The section disappears from the site and the admin panel goes
back to saying it is not set up. Your existing feedback stays in the database.
