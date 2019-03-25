TEXMF=$(shell kpsewhich -var-value=TEXMFHOME)

all: install

uninstall:
	rm -rf $(TEXMF)/tex/latex/mi-document

copy_files:
	cp mi-document/*.sty $(TEXMF)/tex/latex/mi-document
	cp mi-document/*.cls $(TEXMF)/tex/latex/mi-document

create_directory:
	if [ ! -d "$(TEXMF)/tex/latex/mi-document" ]; then mkdir -p $(TEXMF)/tex/latex/mi-document; fi

install: create_directory copy_files
update:	uninstall create_directory copy_files
