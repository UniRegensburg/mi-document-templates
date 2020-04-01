all: render

render:
	xelatex document.tex
	bibtex document
	xelatex document.tex
	xelatex document.tex

clean:
	rm *.aux
	rm *.bbl
	rm *.blg
	rm *.idx
	rm *.ilg
	rm *.ind
	rm *.lof
	rm *.log
	rm *.lol
	rm *.lot
	rm *.out
	rm *.pdf
	rm *.toc
