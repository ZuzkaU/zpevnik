.PHONY: clean all

all: minimalSongbook.pdf

minimalSongbook.pdf: minimalSongbook.tex macros.tex
	pdflatex $<

clean:
	rm -f *.aux *.log *.sxc *.sxd *.sbx
