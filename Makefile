PROJNAME=master_thesis
BUILDDIR=build
FLAGS=-outdir=$(BUILDDIR) \
  	  -lualatex \
	  -interaction=nonstopmode \
	  -shell-escape \
	  -use-make


all: $(PROJNAME).pdf

$(PROJNAME).pdf: $(PROJNAME).tex
	latexmk $(FLAGS) $<

cleanall:
		latexmk -outdir=$(BUILDDIR) -C

clean:
		latexmk -outdir=$(BUILDDIR) -c

.PHONY: $(PROJNAME).pdf all clean cleanall
