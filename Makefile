PROJNAME=master_thesis
ABSTRACT=abstract
PRESENTATION=presentation
TITLEPAGE=titlepage

BUILDDIR=build
FLAGS=-outdir=$(BUILDDIR) \
  	  -lualatex \
	  -interaction=nonstopmode \
	  -shell-escape \
	  -use-make


all: $(PROJNAME).pdf $(ABSTRACT).pdf $(PRESENTATION).pdf $(TITLEPAGE).pdf

$(PROJNAME).pdf: $(PROJNAME).tex
	latexmk $(FLAGS) $<

$(ABSTRACT).pdf: $(ABSTRACT).tex
	latexmk $(FLAGS) $<

$(PRESENTATION).pdf: $(PRESENTATION).tex
	latexmk $(FLAGS) $<

$(TITLEPAGE).pdf: $(TITLEPAGE).tex
	latexmk $(FLAGS) $<

cleanall:
		latexmk -outdir=$(BUILDDIR) -C

clean:
		latexmk -outdir=$(BUILDDIR) -c

.PHONY: $(PROJNAME).pdf $(ABSTRACT).pdf $(PRESENTATION).pdf $(TITLEPAGE).pdf all clean cleanall
