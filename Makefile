all:	collatz_conjecture_patterns.dvi \
	collatz_conjecture_patterns.ps \
	collatz_conjecture_patterns.pdf

%.dvi: %.tex
	latex $<

%.ps: %.dvi
	dvips -Ppdf -G0 $<

%.pdf: %.ps
	ps2pdf $<
