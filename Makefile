PROJNAME=master_thesis
ABSTRACT=abstract

BUILDDIR=build
FLAGS=-outdir=$(BUILDDIR) \
  	  -lualatex \
	  -interaction=nonstopmode \
	  -shell-escape \
	  -use-make


all: $(PROJNAME).pdf $(ABSTRACT).pdf

$(PROJNAME).pdf: $(PROJNAME).tex
	latexmk $(FLAGS) $<

$(ABSTRACT).pdf: $(ABSTRACT).tex
	latexmk $(FLAGS) $<

cleanall:
		latexmk -outdir=$(BUILDDIR) -C

clean:
		latexmk -outdir=$(BUILDDIR) -c

.PHONY: $(PROJNAME).pdf all clean cleanall
