NOME=estatutosocial ata_fundacao ata_fundacao_2 requerimento

all: $(addsuffix .pdf,${NOME}) estatutosocial.html

%.pdf: %.tex
	pdflatex -halt-on-error $^
	pdflatex -halt-on-error $^

%.html: %.tex
	htlatex $^

clean::
	rm -f *~
	rm -f $(addsuffix .4ct,${NOME}) $(addsuffix .4tc,${NOME})
	rm -f $(addsuffix .dvi,${NOME}) $(addsuffix .idv,${NOME})
	rm -f $(addsuffix .tmp,${NOME}) $(addsuffix .lg,${NOME}) $(addsuffix .xref,${NOME})
	rm -f $(addsuffix .html,${NOME}) $(addsuffix .css,${NOME})
	rm -f $(addsuffix .aux,${NOME}) $(addsuffix .log,${NOME})
	rm -f $(addsuffix .pdf,${NOME})
	rm -f texput.log
