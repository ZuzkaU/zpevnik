.PHONY: clean all

all: zpevnik.pdf

zpevnik.pdf: zpevnik-included.tex zpevnik.tex macros.tex tabs.tex songs/*.tex
	latexmk -pdf -jobname=zpevnik $<

zpevnik-included.tex: zpevnik.tex macros.tex tabs.tex songs/*.tex
	ls songs/*.tex | sed 's/.tex//' | sed -e 's/^/\\input{"/' -e 's/$$/"}/' > songs-input.txt
	sed -e '/%INCLUDE_SONGS_IN_MAKEFILE/{r songs-input.txt' -e 'd}' zpevnik.tex > zpevnik-included.tex

clean:
	rm -f *.aux *.log *.sxc *.sxd *.sbx *.mx1 *.fls *.fdb_latexmk
	rm -f songs-input.txt zpevnik-included.tex zpevnik.toc
