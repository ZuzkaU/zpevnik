.PHONY: clean all

all: tunes.pdf

tunes.pdf: tunes.tex
	pdftex $<

clean:
	rm -f *.aux *.log *.sxc *.sxd *.sbx
