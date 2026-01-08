# DEVHIVE IT SOLUTIONS — Website

A minimal, fast, single-page site for DEVHIVE IT SOLUTIONS. Built with plain HTML and CSS for easy maintenance and GitHub Pages hosting.

Live hosting will be configured via GitHub Pages in Phase 2 (Settings → Pages). This repo serves from the repository root.

Expected Pages URL (once enabled): https://devhiveit.github.io/website/

## Tech
- HTML5 + vanilla CSS (no framework)
- Zero/near-zero JavaScript (inline only for the footer year)
- System font stack with Proxima Nova as a preferred font name if available locally

## Structure
- index.html — single-page with sections (Hero, Services, About, Contact)
- css/styles.css — lightweight, responsive styles using your color palette
- assets/favicon.svg — simple gradient favicon
- 404.html — not-found page for GitHub Pages
- robots.txt — allows indexing

## Quick start (local preview)
You can preview locally with any static file server. For example, using Python:

- Python 3: `python3 -m http.server 8000`
- Python 2: `python -m SimpleHTTPServer 8000`

Then open http://localhost:8000 in your browser.

## Customize
- Page metadata (title/description/OG tags): edit `<head>` in index.html
- Social share image: update `og:image` URL in index.html once the live URL is known
- Colors: edit CSS variables in css/styles.css (`--color-primary`, etc.)
- Font: when you have the license/webfont for Proxima Nova, we can add a font-face or a trusted CDN; for now, system fonts ensure maximum performance
- Copy: edit section text in index.html

## Deployment (GitHub Pages)
1) Commit and push to main
2) In GitHub: Settings → Pages → “Deploy from a branch” → Branch: `main`, Folder: `/ (root)` → Save
3) Wait for the Pages build to finish; visit the provided URL
4) Update the `og:url` and `og:image` in index.html to reflect the live site URL

## Contact details on site
- Email: devhiveit@gmail.com
- Location: Dubai, UAE
- Address: Property Name: IFZA Business Park, DDP
- No phone or LinkedIn listed by request

## Notes
- Accessibility: semantic HTML, skip link, focus styles, high-contrast palette
- Performance: no frameworks, minimal CSS, no blocking JS
- Images: inline SVG icons; stock images can be added later if desired
