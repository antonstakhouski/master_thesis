PROJNAME=master_thesis
ABSTRACT=abstract
PRESENTATION=presentation

BUILDDIR=build
FLAGS=-outdir=$(BUILDDIR) \
  	  -lualatex \
	  -interaction=nonstopmode \
	  -shell-escape \
	  -use-make


all: $(PROJNAME).pdf $(ABSTRACT).pdf $(PRESENTATION).pdf

$(PROJNAME).pdf: $(PROJNAME).tex
	latexmk $(FLAGS) $<

$(ABSTRACT).pdf: $(ABSTRACT).tex
	latexmk $(FLAGS) $<

$(PRESENTATION).pdf: $(PRESENTATION).tex
	latexmk $(FLAGS) $<

cleanall:
		latexmk -outdir=$(BUILDDIR) -C

clean:
		latexmk -outdir=$(BUILDDIR) -c

.PHONY: $(PROJNAME).pdf $(ABSTRACT).pdf $(PRESENTATION).pdf all clean cleanall
