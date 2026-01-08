# DEVHIVE IT SOLUTIONS — Website Plan & Checklist

This document outlines a minimal, easy-to-maintain static website for DEVHIVE IT SOLUTIONS, suitable for GitHub Pages hosting. It includes scope, structure, and a step-by-step checklist.

Company focus (per IFZA license):
1) Computer Systems & Communication Equipment Software Design
2) Marketing Management
3) Human Resources Consultancies

---

## Goals and Constraints
- Simple, mostly static presence website.
- No backend; pure HTML/CSS and minimal JS.
- Fast to set up, easy to maintain, and GitHub Pages friendly.
- Clear presentation of the three licensed services, company intro, and contact details.
- Placeholder assets (logo, favicon) to be added later when available.

## Deliverables
- Static site hosted on GitHub Pages from this repository.
- Pages/sections:
  - Home (hero, brief intro, CTA)
  - Services (the three licensed services summarized)
  - About (company overview, approach, compliance note)
  - Contact (email/phone/placeholders, location/Emirate if desired)
  - 404 page (optional but recommended for GH Pages)
  - Privacy notice (lightweight, optional for now)

## Tech Stack and Structure (no build step)
- HTML5 + vanilla CSS + minimal vanilla JS (for mobile nav toggle only if needed).
- System font stack for performance; optional small webfont later.
- Directory layout:
  - index.html (single-page with sections, or multi-section landing)
  - /assets/ (images, logo placeholder, favicon placeholder)
  - /css/styles.css
  - /js/main.js (optional)
  - /site/robots.txt and /site/sitemap.xml (optional, nice-to-have)

## Content Outline
- Header: Logo placeholder + navigation.
- Hero: Company name, short value proposition, CTA to Contact.
- Services: Brief cards/rows for
  1) Software Design (Computer Systems & Communication Equipment Software Design)
  2) Marketing Management
  3) Human Resources Consultancies
- About: Who we are; note UAE IFZA license; quality and compliance.
- Contact: Email (mailto:), phone, LinkedIn (optional), Dubai location (optional).
- Footer: Copyright, quick links, compliance note.

## Accessibility & SEO Basics
- Semantic HTML, proper landmarks, alt text placeholders.
- Adequate color contrast and keyboard focus states.
- Basic SEO: title, meta description, Open Graph/Twitter meta tags.
- Favicon placeholder; robots.txt allowing indexing; basic sitemap.xml (optional).

## Hosting (GitHub Pages)
- Serve from main branch root or /docs folder (we’ll use root for simplicity).
- After pushing, enable GitHub Pages in repo settings: Settings → Pages → Source: “Deploy from a branch” (main / root).

---

## Inputs Needed From You
- Official company logo (when ready).
- Brand colors and typography preferences (if any).
- Official contact email, phone, and address (or leave as placeholders initially).
- Any specific copy or tagline you prefer.
- Links to social profiles (LinkedIn, etc.) if you want them on the site.

## Risks & Assumptions
- Until logo/colors are provided, we’ll use a neutral color palette and placeholders.
- Contact form will use mailto: for now (no backend). Later we can integrate a static form service (e.g., Formspree) if desired.

---

## Phased Checklist

### Phase 1 — Planning
- [x] Create this plan and checklist document
- [x] Confirm contact details to display (email, phone) and any address
- [x] Confirm color palette preference (otherwise use neutral/accessible defaults)
- [x] Confirm if the site should be a single-page landing or multi-page (default: single-page landing)

### Phase 2 — Repository Structure & Scaffolding
- [x] Add initial files: index.html, css/styles.css, js/main.js (optional), assets/ placeholders
- [x] Add README with local preview and GitHub Pages deployment instructions
- [x] Add 404.html (recommended for GH Pages)
- [x] Add robots.txt (allow) and optional sitemap.xml

### Phase 3 — Content & Layout
- [x] Header with nav and logo placeholder (alt text ready for future logo)
- [x] Hero section with company name and concise value proposition
- [x] Services section with the three licensed services, clear descriptions
- [x] About section (company overview + IFZA license mention)
- [x] Contact section (mailto link, phone, optional LinkedIn)
- [x] Footer with copyright and quick links

### Phase 4 — Styling, Responsiveness, Accessibility
- [x] Responsive layout for mobile, tablet, desktop
- [x] Accessible color contrast and focus states
- [x] Keyboard-accessible navigation (skip link optional)
- [x] Metadata: page title, meta description, Open Graph/Twitter tags
- [x] Placeholder favicon and alt text for images

### Phase 5 — QA & Deployment
- [ ] Validate HTML/CSS (W3C validators)
- [ ] Manual test on mobile and desktop
- [x] Add sitemap.xml and wire Sitemap in robots.txt
- [ ] Push changes to GitHub
- [ ] Enable GitHub Pages (Settings → Pages)
- [ ] Verify live site URL works and shares well (OG preview)

### Phase 6 — Post-Launch Enhancements (Optional)
- [ ] Replace placeholders with final logo and brand colors
- [ ] Add basic analytics (e.g., Plausible/GA4)
- [ ] Add a static contact form service if needed
- [ ] Add blog/news (if desired) via a simple folder of HTML posts or a static generator later

---

## Next Steps (Proposed)
1) You confirm contact details, single-page vs multi-page preference, and any color preferences.
2) I scaffold the site (index.html, styles, placeholders) and push an initial version suitable for immediate GitHub Pages deployment.
