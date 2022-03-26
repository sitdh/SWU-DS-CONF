config:
	python3 -m venv venv 
	source venv/bin/activate 
	pip install -U pip pywatch

reference:
	@bibtex main.tex
	xelatex -interaction=nonstopmode main.tex

build:
	xelatex -interaction=nonstopmode main.tex

watch: *.tex **/*.tex *.bib
	make build
	@pywatch "make -B build" $?
