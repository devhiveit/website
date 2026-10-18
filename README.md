# DEVHIVE IT SOLUTIONS — Website

A minimal, fast, single-page site for DEVHIVE IT SOLUTIONS. Plain HTML and CSS, hosted on GitHub Pages from the repository root.

Live URL: https://devhiveit.github.io/website/

## Tech
- HTML5 + vanilla CSS — no framework, no build step, no package dependencies
- No third-party scripts, fonts, or CDNs; the only JavaScript is an inline one-liner for the footer year
- System font stack

## Structure
- `index.html` — single page with sections (Hero, Services, About, Contact)
- `404.html` — not-found page; uses `<base href="/website/">` so styles and links resolve on any missing path
- `css/styles.css` — responsive styles; design tokens (colors, radii, shadows) are CSS variables in `:root`
- `assets/logo.png` — brand logo (header, hero, footer)
- `assets/favicon-32.png`, `favicon-180.png` (Apple touch icon), `favicon-192.png` (also the OG/Twitter share image)
- `robots.txt`, `sitemap.xml` — crawler config
- `.nojekyll` — tells GitHub Pages to serve files as-is
- `Makefile` — local preview helpers

## Local preview
Requires Python 3.

```sh
make serve           # http://localhost:8000
make serve-restart   # kill whatever holds :8000, then serve
```

Note: `python3 -m http.server` does not serve `404.html` for missing paths, and the 404 page's `<base href>` points at `/website/`, so test the 404 page on the live site.

## Customize
- Page metadata (title, description, OG/Twitter tags, canonical): `<head>` in `index.html`
- Colors: CSS variables in `css/styles.css` (`--navy`, `--teal`, `--orange`, `--green`, …)
- Copy: section text in `index.html`
- When content changes, bump `<lastmod>` in `sitemap.xml`
- Images: PNGs are palette-quantized (256 colors, alpha kept) — compress replacements the same way before committing

## Deployment (GitHub Pages)
Pages is configured as "Deploy from a branch" → `main`, folder `/ (root)`. Pushing to `main` publishes automatically.

If the site ever moves off the `/website/` path (e.g. a custom domain), update `og:url`, `og:image`, `twitter:image` and `canonical` in `index.html`, the URLs in `robots.txt` and `sitemap.xml`, and the `<base href>` in `404.html`.

## Contact details on site
- Email: devhiveit@gmail.com
- Location: IFZA Business Park, DDP, Dubai, UAE
- No phone or LinkedIn listed by request

## Notes
- Accessibility: semantic HTML, skip link, visible focus styles, `prefers-reduced-motion` respected
- Performance: no frameworks, no blocking third-party requests, inline SVG icons
