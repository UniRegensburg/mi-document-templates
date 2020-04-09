BASE=document
export TEXINPUTS := .:./mi-document:

all: ${BASE}.pdf

${BASE}.pdf:
	xelatex ${BASE}.tex
	bibtex ${BASE}
	xelatex ${BASE}.tex
	xelatex ${BASE}.tex

clean:
	-rm ${BASE}.aux ${BASE}.bbl ${BASE}.blg ${BASE}.idx ${BASE}.ilg ${BASE}.ind ${BASE}.lof ${BASE}.log ${BASE}.lol ${BASE}.lot ${BASE}.out ${BASE}.pdf ${BASE}.toc
