PROJNAME = master_thesis


all: $(PROJNAME).pdf

$(PROJNAME).pdf: $(PROJNAME).tex
	latexmk -lualatex -interaction=nonstopmode -shell-escape -use-make $<

cleanall:
		latexmk -C

clean:
		latexmk -c

.PHONY: $(PROJNAME).pdf all clean
