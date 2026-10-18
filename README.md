# DEVHIVE IT SOLUTIONS — Website

A minimal, fast, single-page site for DEVHIVE IT SOLUTIONS. Plain HTML and CSS, no build framework.

- Production: https://devhiveit.com/ (Cloudflare Pages, deployed from published GitHub releases)
- Preview: https://devhiveit.github.io/website/ (GitHub Pages, tracks `main`)

## Tech
- HTML5 + vanilla CSS — no framework and no site dependencies (the only npm package is the pinned deploy CLI used in CI)
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
- `Makefile` — local preview and the `dist` build for devhiveit.com
- `.github/workflows/deploy-cloudflare.yml` — release → Cloudflare Pages deploy
- `.github/cloudflare/` — `package.json` + lockfile pinning `wrangler` for that workflow

## Local preview
Requires Python 3.

```sh
make serve           # http://localhost:8000
make serve-restart   # kill whatever holds :8000, then serve
make dist            # build the devhiveit.com copy into dist/ (gitignored)
```

Note: `python3 -m http.server` does not serve `404.html` for missing paths, and the 404 page's `<base href>` points at `/website/`, so test the 404 page on the live site.

## Customize
- Page metadata (title, description, OG/Twitter tags, canonical): `<head>` in `index.html`
- Colors: CSS variables in `css/styles.css` (`--navy`, `--teal`, `--orange`, `--green`, …)
- Copy: section text in `index.html`
- When content changes, bump `<lastmod>` in `sitemap.xml`
- Images: PNGs are palette-quantized (256 colors, alpha kept) — compress replacements the same way before committing

## Deployment
Two targets, both automatic:

| Target | URL | Source | How |
|---|---|---|---|
| Preview | devhiveit.github.io/website/ | `main` | GitHub Pages ("Deploy from a branch" → `main`, `/ (root)`) |
| Production | devhiveit.com (and www) | published releases | `deploy-cloudflare.yml` → Cloudflare Pages project `devhiveit-website` |

**Ship to production:** merge to `main`, then publish a GitHub release (e.g. `v1.0.1`). The workflow checks out the release tag, runs `make dist` (copies only the site files and rewrites the 404 page's `<base href>` to `/`), and runs `wrangler pages deploy` to the `production` branch. Prereleases and drafts are not deployed.

**Redeploy an existing release:** Actions → "Deploy to devhiveit.com" → Run workflow → enter the tag. It refuses any tag that isn't a published, non-prerelease release.

**Secrets** (repo → Settings → Secrets → Actions): `CLOUDFLARE_API_TOKEN` (scoped to Account › Cloudflare Pages › Write only) and `CLOUDFLARE_ACCOUNT_ID`.

**Updating wrangler:** change the version in `.github/cloudflare/package.json`, regenerate the lockfile with `npm install --package-lock-only --ignore-scripts` in that folder, and commit both files.

Canonical, Open Graph, `robots.txt` and `sitemap.xml` URLs point at `https://devhiveit.com/`, so search engines treat the GitHub Pages copy as a mirror. The 404 page's `<base href="/website/">` is for GitHub Pages; `make dist` rewrites it for the domain root.

## Contact details on site
- Email: devhiveit@gmail.com
- Location: IFZA Business Park, DDP, Dubai, UAE
- No phone or LinkedIn listed by request

## Notes
- Accessibility: semantic HTML, skip link, visible focus styles, `prefers-reduced-motion` respected
- Performance: no frameworks, no blocking third-party requests, inline SVG icons
