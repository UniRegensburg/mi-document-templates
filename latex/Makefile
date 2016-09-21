TEXMF=$(shell kpsewhich -var-value=TEXMFHOME)

all: install

uninstall:
	rm -rf ~/texmf/text/latex/mi-document

copy_files:
	cp mi-document/*.sty $(TEXMF)/tex/latex/mi-document
	cp mi-document/*.cls $(TEXMF)/tex/latex/mi-document

create_directory:
	if [ ! -d "$(TEXMF)" ]; then mkdir $(TEXMF); fi
	if [ ! -d "$(TEXMF)/tex" ]; then mkdir $(TEXMF)/tex; fi
	if [ ! -d "$(TEXMF)/tex/latex" ]; then mkdir $(TEXMF)/tex/latex; fi
	if [ ! -d "$(TEXMF)/tex/latex/mi-document" ]; then mkdir $(TEXMF)/tex/latex/mi-document; fi

install: create_directory copy_files
update:	uninstall create_directory copy_files
