.PHONY: serve serve-restart dist clean

SITE_FILES := index.html 404.html robots.txt sitemap.xml css assets

serve:
	python3 -m http.server 8000

serve-restart:
	-lsof -ti:8000 | xargs kill 2>/dev/null
	python3 -m http.server 8000

# Build the devhiveit.com (Cloudflare Pages) copy: site files only, served from the domain root
dist: clean
	mkdir -p dist
	cp -R $(SITE_FILES) dist/
	sed -i.bak 's|<base href="/website/">|<base href="/">|' dist/404.html && rm dist/404.html.bak
	@if grep -rlE 'devhiveit\.github\.io|"/website/' dist; then echo "dist still references the GitHub Pages path" >&2; exit 1; fi

clean:
	rm -rf dist
