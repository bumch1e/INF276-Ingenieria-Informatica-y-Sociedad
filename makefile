compile_pdflatex:
	@echo "[+] Compilando..."
	@pdflatex -interaction=nonstopmode memoir.tex > /dev/null 2>&1 || (echo "[!] Error al compilar"; exit 1)
	@pdflatex -interaction=nonstopmode memoir.tex > /dev/null 2>&1 || (echo "[!] Error al compilar"; exit 1)
	@$(MAKE) move
	@$(MAKE) move

compile_pdflatex_EN:
	@echo "[+] Compilando..."
	@pdflatex -interaction=nonstopmode memoir_EN.tex > /dev/null 2>&1 || (echo "[!] Error al compilar"; exit 1)
	@pdflatex -interaction=nonstopmode memoir_EN.tex > /dev/null 2>&1 || (echo "[!] Error al compilar"; exit 1)
	@$(MAKE) move

move:
	@find . -type f ! -name '*.png' ! -name '*.tex' ! -name 'makefile' ! -name '*.pdf' -exec mv {} ./aux/ \; 2>/dev/null

clean:
	@rm -f aux/*
