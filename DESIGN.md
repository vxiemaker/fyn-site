---
version: alpha
name: FYN-design-system
description: "A Lebanese cookie brand built like a screen-printed wanted poster. Scarlet #ca3133 and warm paper cream #efe6cb sit on a crumpled-paper texture blended in multiply, so no surface is ever flat digital colour. Every card, button and photo is outlined in a 3px near-black ink stroke and offset by a hard 5px shadow with zero blur, which reads as sticker and print rather than material elevation. Display type is Anton at 400 only, set uppercase at a 0.82 to 0.95 line-height so headlines stack as solid blocks; body is Archivo variable from 400 to 800. Photography is the hero: real cookies, real hands, cropped tight, rotated 1.5 degrees off-axis and pinned inside rounded ink frames. Motion is playful and looping rather than cinematic: two seamless marquees, a rotating stamp, a mascot that chomps when you add a cookie. The whole system is one HTML file with fonts and photos inlined as data URIs, so it has no network dependencies at all."

colors:
  primary: "#ca3133"
  primary-deep: "#a1272a"
  on-primary: "#ffffff"
  ink: "#17140f"
  ink-soft: "#4c4437"
  ink-on-red: "#fdf7ee"
  ink-on-red-warm: "#ffefe4"
  canvas: "#efe6cb"
  canvas-deep: "#e6dab9"
  surface-card: "#f8f2e0"
  surface-receipt: "#fbf7ec"
  hairline: "#d8c6a6"
  gold: "#eec87e"
  gold-deep: "#d9b876"
  peach: "#f0c2a0"
  footer-canvas: "#17140f"
  footer-ink: "#e9ddce"
  footer-ink-muted: "#b7a793"
  footer-ink-subtle: "#a2917d"
  footer-ink-faint: "#8f7f6d"
  channel-whatsapp: "#0f7c40"
  channel-whatsapp-hover: "#0b6b39"

typography:
  wordmark:
    fontFamily: Anton
    fontSize: 224px
    fontWeight: 400
    lineHeight: 0.82
    letterSpacing: 0.01em
    textTransform: uppercase
    clamp: "clamp(5rem, 2rem + 17vw, 14rem)"
  display-xl:
    fontFamily: Anton
    fontSize: 73.6px
    fontWeight: 400
    lineHeight: 0.92
    letterSpacing: normal
    textTransform: uppercase
    clamp: "clamp(2.4rem, 1.6rem + 3.6vw, 4.6rem)"
  display-quote:
    fontFamily: Anton
    fontSize: 41.6px
    fontWeight: 400
    lineHeight: 1.04
    letterSpacing: normal
    textTransform: uppercase
    clamp: "clamp(1.5rem, 1rem + 2vw, 2.6rem)"
  headline:
    fontFamily: Anton
    fontSize: 32px
    fontWeight: 400
    lineHeight: 1.6
    letterSpacing: normal
    textTransform: uppercase
    clamp: "clamp(1.5rem, 1.2rem + 1.3vw, 2rem)"
  numeric-display:
    fontFamily: Anton
    fontSize: 28.8px
    fontWeight: 400
    lineHeight: 1.6
    letterSpacing: normal
    fontVariantNumeric: tabular-nums
  card-title:
    fontFamily: Anton
    fontSize: 21.6px
    fontWeight: 400
    lineHeight: 1.0
    letterSpacing: normal
    textTransform: uppercase
    clamp: "clamp(1rem, 3.6vw, 1.35rem)"
  faq-summary:
    fontFamily: Anton
    fontSize: 17.6px
    fontWeight: 400
    lineHeight: 1.6
    textTransform: uppercase
    clamp: "clamp(0.95rem, 3vw, 1.1rem)"
  lead:
    fontFamily: Archivo
    fontSize: 22.4px
    fontWeight: 500
    lineHeight: 1.6
    letterSpacing: normal
    clamp: "clamp(1.1rem, 1rem + 0.6vw, 1.4rem)"
  body:
    fontFamily: Archivo
    fontSize: 17.28px
    fontWeight: 400
    lineHeight: 1.6
    letterSpacing: normal
    clamp: "clamp(1rem, 0.97rem + 0.16vw, 1.08rem)"
  button:
    fontFamily: Archivo
    fontSize: 16px
    fontWeight: 700
    lineHeight: 1.6
    letterSpacing: 0.02em
    textTransform: uppercase
  nav-link:
    fontFamily: Archivo
    fontSize: 15.68px
    fontWeight: 600
    lineHeight: 1.6
    letterSpacing: 0.03em
    textTransform: uppercase
  eyebrow:
    fontFamily: Archivo
    fontSize: 13.12px
    fontWeight: 700
    lineHeight: 1.6
    letterSpacing: 0.22em
    textTransform: uppercase
    clamp: "clamp(0.72rem, 0.68rem + 0.2vw, 0.82rem)"
  label-micro:
    fontFamily: Archivo
    fontSize: 10.24px
    fontWeight: 800
    lineHeight: 1.6
    letterSpacing: 0.12em
    textTransform: uppercase
  signature:
    fontFamily: Archivo
    fontSize: 18.4px
    fontWeight: 600
    fontStyle: italic
    lineHeight: 1.6

spacing:
  xxs: 4px
  xs: 8px
  sm: 12px
  md: 16px
  lg: 24px
  xl: 32px
  xxl: 48px
  gutter: 48px
  section: 144px
  section-optical-bottom: 184px
  maxWidth: 1180px

rounded:
  xs: 9px
  sm: 12px
  md: 14px
  lg: 16px
  xl: 24px
  pill: 100px

borders:
  hairline: "1px solid {colors.hairline}"
  structural: "2px solid {colors.ink}"
  control: "2.5px solid {colors.ink}"
  frame: "3px solid {colors.ink}"

shadows:
  hard: "5px 5px 0 {colors.ink}"
  hard-control: "4px 4px 0 {colors.ink}"
  hard-small: "3px 3px 0 {colors.ink}"
  hard-lift: "8px 8px 0 {colors.primary}"
  soft-sm: "0 2px 10px rgba(40, 20, 12, 0.08)"
  soft-md: "0 16px 34px -16px rgba(40, 20, 12, 0.28)"
  soft-lg: "0 40px 80px -30px rgba(40, 20, 12, 0.4)"

motion:
  ease: "cubic-bezier(0.22, 0.61, 0.36, 1)"
  control: 200ms
  standard: 250ms
  reveal: 500ms
  drawer: 320ms
  panel: 360ms
  marquee-text: 26s
  marquee-photos: 46s
  stamp-rotation: 22s
  mascot-float: 5.5s

components:
  button-primary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button}"
    rounded: "{rounded.pill}"
    border: "{borders.control}"
    shadow: "{shadows.hard-control}"
    padding: 0.85em 1.6em
  button-primary-hover:
    backgroundColor: "{colors.primary-deep}"
    transform: translate(-2px, -2px)
    shadow: "6px 6px 0 {colors.ink}"
  button-primary-pressed:
    transform: translate(0, 0)
    shadow: "2px 2px 0 {colors.ink}"
  button-ink:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.canvas}"
    shadow: "4px 4px 0 {colors.primary}"
    rounded: "{rounded.pill}"
  button-ghost:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    border: "{borders.control}"
    shadow: "{shadows.hard-control}"
    rounded: "{rounded.pill}"
  button-whatsapp:
    backgroundColor: "{colors.channel-whatsapp}"
    textColor: "{colors.on-primary}"
    rounded: "{rounded.pill}"
    note: "Darkened from the WhatsApp green so white text clears 4.5:1"
  product-card:
    backgroundColor: "{colors.surface-card}"
    border: "{borders.frame}"
    rounded: "{rounded.lg}"
    shadow: "{shadows.hard-control}"
  product-card-hover:
    transform: translate(-3px, -3px)
    shadow: "{shadows.hard-lift}"
    imageScale: 1.07
  product-card-media:
    aspectRatio: "1 / 1"
    borderBottom: "{borders.frame}"
    fallback: "linear-gradient(135deg, #e3b381, #b06f42 60%, #7c4a28)"
  badge:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    border: "2px solid {colors.ink}"
    rounded: "{rounded.pill}"
    typography: "{typography.label-micro}"
    rotation: "-3deg / 2.5deg / -2deg / 3deg by position"
  badge-soon:
    backgroundColor: "{colors.ink}"
  hero-figure:
    aspectRatio: "5 / 6"
    border: "{borders.frame}"
    rounded: "{rounded.xl}"
    shadow: "{shadows.hard}"
    rotation: 1.5deg
  story-figure:
    aspectRatio: "4 / 5"
    border: "{borders.frame}"
    rounded: "{rounded.xl}"
    shadow: "{shadows.hard}"
    rotation: -1.5deg
  stamp:
    backgroundColor: "{colors.primary}"
    stroke: "{colors.ink}"
    strokeWidth: 3
    textColor: "{colors.canvas}"
    animation: "rotate 22s linear infinite"
    size: "clamp(104px, 24vw, 156px)"
  receipt:
    backgroundColor: "{colors.surface-receipt}"
    border: "{borders.frame}"
    rounded: "{rounded.md}"
    shadow: "{shadows.hard}"
    maxWidth: 560px
    topStripe: "repeating-linear-gradient(90deg, {colors.gold} 0 14px, {colors.gold-deep} 14px 24px)"
    perforation: "radial-gradient punch-through at the bottom edge"
  delivery-area-chip:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    feeColor: "{colors.primary}"
    border: "{borders.control}"
    rounded: "{rounded.pill}"
    shadow: "{shadows.hard-small}"
    selectedBackgroundColor: "{colors.primary}"
    selectedTextColor: "{colors.on-primary}"
    role: "radio inside a radiogroup, nothing preselected"
  receipt-row:
    borderBottom: "{borders.hairline}"
    typography: "{typography.body}"
    amountTypography: "{typography.numeric-display}"
    fontVariantNumeric: tabular-nums
  stepper:
    backgroundColor: "{colors.canvas}"
    border: "{borders.control}"
    rounded: "{rounded.pill}"
    activeBackgroundColor: "{colors.primary}"
    activeTextColor: "{colors.on-primary}"
  marquee-band:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.canvas}"
    borderBlock: "{borders.frame}"
    typography: "{typography.card-title}"
    animation: "translateX(-50%) 26s linear infinite"
  faq-slip:
    backgroundColor: "{colors.surface-receipt}"
    border: "{borders.frame}"
    rounded: "{rounded.md}"
    shadow: "{shadows.hard}"
    maxWidth: 620px
    topStripe: "same gold ticket stripe as the receipt"
    perforation: "same radial punch as the receipt"
    note: "it is the fine print, so it is printed like the back of the receipt"
  faq-item:
    separator: "{borders.hairline}"
    marker: "plus / minus glyph in {colors.primary}"
    hover: "summary turns {colors.primary}, no box to tint"
  top-nav:
    height: 72px
    backgroundColor: transparent
    scrolledBackgroundColor: "rgba(242, 231, 212, 0.9)"
    scrolledBackdrop: "saturate(140%) blur(12px)"
    scrolledBorderBottom: "0 2px 0 {colors.ink}"
  mobile-drawer:
    inset: "72px 0 0 0"
    backgroundColor: "{colors.canvas}"
    borderTop: "{borders.control}"
    linkTypography: "{typography.display-quote}"
    linkAlignment: centered
    socialsPinned: bottom
  footer:
    backgroundColor: "{colors.footer-canvas}"
    textColor: "{colors.footer-ink}"
    brandColor: "{colors.primary}"
  mascot-head:
    usage: "nav, hero and footer lockups beside the wordmark"
    note: "90x82 crop; a full body collapses to nothing at 38px"
  mascot-full:
    usage: "empty receipt, the sticker on the story seam, the 404 page, the share card"
    treatment: "transparent cut-out placed on the page, never boxed in a frame"
    inlined: "once, as {colors} sibling token --mascot, referenced by both in-page uses"
---

# Design System: FYN

## 1. Visual Theme & Atmosphere

**Density 4 (daily-app balanced). Variance 6 (offset asymmetric). Motion 6 (fluid CSS, playful loops).**

FYN looks like a screen-printed poster that got taped to a bakery window. The atmosphere is warm, loud and hand-made: scarlet on cream paper, thick ink outlines, hard offset shadows with no blur, and everything sitting a degree or two off-square as though it were placed by hand rather than positioned by a layout engine.

The defining move is that **no surface is flat digital colour**. A crumpled-paper JPEG tiles at 220px behind every section and blends in `multiply`, and a fixed SVG turbulence grain sits over the whole page at 5% opacity. Cream is never `#efe6cb` exactly on screen. It is that colour multiplied through paper fibre.

The second defining move is that **elevation is print, not material**. Nothing uses a soft drop shadow to float. Cards, buttons, photo frames and the receipt all carry a 3px near-black outline and a zero-blur offset shadow, so they read as die-cut stickers laid on paper. Hover does not raise a card with blur; it slides the card up-left by 3px and swaps the ink shadow for a scarlet one, like a second print pass slightly out of register.

Photography carries the brand. Real cookies, real hands, cropped tight enough that the chocolate is the subject. Photos are never square to the grid: the hero figure sits at +1.5°, the story figure at −1.5°. Every photograph lives inside a rounded ink frame, without exception.

## 2. Colour Palette & Roles

One accent. Scarlet is the only chromatic colour in the system; everything else is warm neutral.

- **Scarlet** `#ca3133`: the brand. Wordmark, primary buttons, price figures, the story band, the stamp, section-title highlights. HSL saturation is 61%, deliberately under the shouting threshold.
- **Deep Scarlet** `#a1272a`: hover and small red text on cream, where the brand red alone would not clear contrast.
- **Paper Cream** `#efe6cb`: the page. Always textured, never flat.
- **Deep Cream** `#e6dab9`: the one step down, for panels that need separation without a tonal jump.
- **Card Cream** `#f8f2e0`: the lightest surface, for cards and channel panels.
- **Receipt Cream** `#fbf7ec`: lighter still, so the receipt reads as thermal paper rather than card stock.
- **Ink** `#17140f`: near-black with a warm bias. Text, every border, every hard shadow. **Never `#000000`.**
- **Soft Ink** `#4c4437`: secondary text, captions, blurbs.
- **Warm White on Red** `#fdf7ee`: all body copy inside the scarlet band. Plain cream fails contrast there; this passes at 4.93:1.
- **Peach Warm White** `#ffefe4`: the eyebrow label inside the scarlet band, keeping a warm tint at 4.68:1.
- **Gold** `#eec87e` / **Deep Gold** `#d9b876`: only the receipt's ticket stripe.
- **Hairline** `#d8c6a6`: the single hairline weight on cream.
- **Footer Ink Ramp** `#e9ddce` → `#b7a793` → `#a2917d` → `#8f7f6d`: four steps of warm grey on the near-black footer. All four clear 4.5:1.
- **WhatsApp Green** `#0f7c40`: not a brand colour. It exists only to make the channel recognisable, and it is darkened from WhatsApp's own green so white label text clears AA.

**Banned:** purple and blue anything, neon, gradient text, pure black, cool greys mixed with the warm ones, a second accent colour.

## 3. Typographic Architecture

Two families, both self-hosted as base64 WOFF2 so the page makes no network requests.

- **Anton**: display only. Ships at 400 weight, uppercase, `line-height` between 0.82 and 1.04 so headlines compress into solid blocks. Used for the wordmark, every section title, card names, prices, the receipt total, FAQ questions and drawer links. The wordmark carries a hard ink text-shadow (`5px 5px 0`) that matches the shadow language of the boxes.
- **Archivo**: everything else. Variable 100 to 900 plus a true italic. Body at 400, leads at 500, buttons and eyebrows at 700, micro-labels at 800, the story signature in italic 600.

Rules that matter:
- **Every number that can change is `tabular-nums`.** Prices, receipt amounts, subtotal, delivery, grand total, stepper quantities. The total animates on every change and would jitter otherwise.
- **Eyebrows carry 0.22em tracking**; micro-labels 0.12em; display type is near-zero. Tracking is the hierarchy signal at small sizes, size is the signal at large ones.
- **`text-wrap: balance` on every heading, `pretty` on body.** No single-word last lines.
- **Curly apostrophes throughout.** `’` never `'`.
- **The whole scale is `clamp()`.** No breakpoint jumps in type size.

**Known quirk:** headings inherit `font-weight: 700` from the browser's `h1` to `h3` defaults, and Anton has no 700, so those headings render with synthetic bold. It thickens the display face very slightly. It is consistent across the site, so it reads as intentional; setting Anton to 400 everywhere would make headlines noticeably lighter.

**Banned:** Inter, system-font stacks as the visible face, any serif, more than two families.

## 4. Component Behaviour

- **Buttons**: pill (`100px`), 2.5px ink border, `4px 4px 0` ink shadow. Hover slides `translate(-2px,-2px)` and grows the shadow to 6px; active drops to `translate(0,0)` with a 2px shadow, so the press reads as the sticker being pushed flat. Four variants: scarlet, ink, ghost cream, WhatsApp green. No glows, ever.
- **Product cards**: 3px ink frame, 16px radius, square photo with a 3px divider under it. Hover slides `-3px,-3px` and swaps the ink shadow for scarlet while the photo scales to 1.07. Badges are pill-shaped and **rotated by position** (−3°, 2.5°, −2°, 3°) so they read as hand-slapped stickers rather than a component instance.
- **Delivery is priced by area, not flat.** The receipt asks "deliver to" between the items and the totals, so the choice comes before the arithmetic it changes. Nothing is preselected and the order buttons stay locked until an area is picked, because a preselected area would let somebody send a total that is wrong for where they live. The areas and their fees are an editable list in the owner panel, so adding pickup at zero or a third city is a two-field job.
- **The receipt** is the centrepiece and behaves like real paper: gold ticket stripe across the top, dashed rules, a radial-punch perforation along the bottom edge, monospaced-feel tabular figures. Every line is editable in place with a −/+ pill and an ✕.
- **Stepper**: cream pill that fills scarlet once quantity passes zero, so a filled box is scannable at a glance. On phones it goes full width for a proper thumb target.
- **Empty state**: the mascot stands in the receipt as a transparent cut-out with "Your box is empty. Add some cookies above." beneath him, rather than rendering an empty table. He is replaced by the line items the moment anything is added, so he never competes with content.
- **Marquees**: two, both built the same way: duplicate the set exactly, translate the track −50%, give every item identical margin so the loop has no seam. The text band runs 26s, the photo strip 46s behind a soft mask. Both pause on hover and focus.
- **Nav**: transparent over the hero, then on scroll picks up a translucent cream fill, a blur, and a 2px ink underline. Mobile is a full-height drawer with centred Anton links and socials pinned to the bottom.

## 5. Layout Principles

- **The page alternates tone on purpose.** Top to bottom: cream hero, scarlet
  marquee, cream menu, scarlet story, cream gallery, deep cream order,
  cream FAQ, ink footer. Three cream sections in a row is the
  failure state this sequence exists to prevent.
- **Tonal steps carry a 3px ink rule, never a soft fade.** The paper texture
  re-tiles from the top of each section, so any change of ground without a hard
  edge shows the seam where the tiles fail to line up. The rule turns that seam
  into a drawn line.
- **1180px max container**, gutters `clamp(1.25rem, 5vw, 3rem)`.
- **Sections are `clamp(4.5rem, 3rem + 8vw, 9rem)` vertically**, with the menu section carrying extra bottom padding so it does not crowd the scarlet band.
- **The hero is an asymmetric split**, 1.1fr / 0.9fr on desktop. It is never centred.
- **The phone hero keeps that same composition.** The text column and the photo sit side by side at the same level using `display: contents` to promote the text children into grid items. The photo occupies column 2 across rows 1 to 4 while the buttons span both columns underneath. This is deliberate and it is the one layout rule that must not be "simplified" into a stack.
- **Menu grid is 2-up on phones, 4-up above 960px.** Never three equal columns.
- **Story is a 0.9fr / 1.1fr split** with the photo on the left.
- **Full-height sections use `svh`**, not `vh`.
- **Safe-area insets** on the fixed editor button, the footer and the drawer.
- **No overlapping content.** The stamp is the single intentional overlap, pinned to the hero photo's corner.

## 6. Motion

`cubic-bezier(0.22, 0.61, 0.36, 1)` for everything. 200ms on controls, 250ms standard, 500ms on scroll reveals.

- **Scroll reveal** via IntersectionObserver, 26px rise plus fade, with a stagger of 70ms across card positions and a load-time safety net so nothing stays invisible in a background tab.
- **Perpetual loops, all decorative:** the mascot floats on a 5.5s cycle, the stamp rotates on 22s, the two marquees run continuously.
- **Feedback loops, all triggered:** quantity pops to 1.42×, the total pops to 1.16×, the card flashes a scarlet ring, and the nav mascot **chomps**, a 550ms rotate-and-scale, every time a cookie is added.
- **Everything animates `transform` and `opacity` only.** No `width`, `height`, `top` or `left`.
- **`prefers-reduced-motion` disables all of it**, converts the photo strip into a normal horizontal scroller, and pins every reveal visible.

## 7. Anti-Patterns (banned in this system)

- Soft blurred drop shadows for elevation. This system uses hard offset shadows.
- Pure `#000000`, cool greys, or any second accent colour.
- Purple/blue gradients, neon, glow, glassmorphism as decoration.
- Flat untextured colour fields. Paper texture or nothing.
- Stock photography of cookies. Only FYN's own photos.
- Three equal cards in a row.
- A centred hero.
- Stacking the phone hero photo above the text
- The character boxed inside a framed tile next to product photography. He is a cut-out laid on the page, not a picture in a frame.
- Straight quotes and apostrophes.
- Non-tabular figures anywhere a number changes.
- Title Case on headings and buttons. This site is sentence case, deliberately.
- Em dashes and en dashes. The copy uses neither, on purpose.
- AI copy tells: "Elevate", "Seamless", "Unleash", "Next-Gen", "Delve".

**Deliberate deviations from the generic taste rules:** FYN uses one emoji, the 🍪 in the pre-filled WhatsApp message, because that is a chat message rather than UI iconography and the brand voice is playful. Everything else on the standard ban list holds.

## 8. Implementation Notes

The entire site is a single ~1 MB `index.html`. Fonts, mascot, product photos, hero, story photo and the paper texture are all base64 data URIs; only the six Instagram gallery JPEGs and the favicon load as separate files, by relative path. There is no build step, no framework and no external request at runtime, which is why the page works offline, from a file, from a subdirectory, or behind any static host.

The product list lives between `/* MENU:START */` and `/* MENU:END */` markers and the shop settings between `/* SETTINGS:START */` and `/* SETTINGS:END */`. The owner-only editor at `#admin` rewrites exactly those two blocks when exporting a new `index.html`, so any change to that region must keep the markers intact and unique.
