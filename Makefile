NOME=estatutosocial

all: ${NOME}.pdf ${NOME}.html

%.pdf: %.tex
	pdflatex -halt-on-error $^
	pdflatex -halt-on-error $^

%.html: %.tex
	htlatex $^

clean::
	rm -f *~
	rm -f ${NOME}.4ct ${NOME}.4tc
	rm -f ${NOME}.dvi ${NOME}.idv
	rm -f ${NOME}.tmp ${NOME}.lg ${NOME}.xref
	rm -f ${NOME}.html ${NOME}.css
	rm -f ${NOME}.aux ${NOME}.log
	rm -f ${NOME}.pdf
	rm -f texput.log
