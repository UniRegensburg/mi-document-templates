BASE=document

all: ${BASE}.pdf

${BASE}.pdf:
	latexmk ${BASE}.tex

clean:
	-rm *.aux ${BASE}.bbl ${BASE}.blg ${BASE}.idx ${BASE}.ilg ${BASE}.ind ${BASE}.lof ${BASE}.log ${BASE}.lol ${BASE}.lot ${BASE}.out ${BASE}.pdf ${BASE}.toc ${BASE}.fls ${BASE}.fdb_latexmk
