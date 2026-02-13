.PHONY: serve serve-restart

serve:
	python3 -m http.server 8000

serve-restart:
	-lsof -ti:8000 | xargs kill 2>/dev/null
	python3 -m http.server 8000
