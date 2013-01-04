LATEX    = latex
PDFLATEX = pdflatex
BIBTEX   = bibtex
DVIPS    = dvips

BASENAME = cv
PDFNAME = ${BASENAME}.pdf

default: cv.pdf resume.pdf clean

cv.pdf: cv.tex
	${PDFLATEX}  cv

resume.pdf: resume.tex
	${PDFLATEX} resume

.PHONY: clean

clean:
	rm -f *.aux *.log *.bbl *.blg *.brf *.cb *.ind *.idx *.ilg  \
	      *.inx *.dvi *.toc *.out *~ ~* spellTmp 

veryclean: clean
	rm -f ${PDFNAME}
