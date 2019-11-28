XELATEX = lualatex --shell-escape
MASTER_THESIS_PDF = master_thesis
BIBTEX = bibtex
RM = rm -f
GREP = grep


all: $(MASTER_THESIS_PDF).pdf


$(MASTER_THESIS_PDF).pdf: *.tex
	$(XELATEX) $(MASTER_THESIS_PDF)
	$(BIBTEX) $(MASTER_THESIS_PDF).aux
	$(XELATEX) $(MASTER_THESIS_PDF)
	$(XELATEX) $(MASTER_THESIS_PDF)
	# cp ${MASTER_THESIS_PDF}.pdf example/

cleanall: clean
	$(RM)  *.pdf

.PHONY: clean
clean:
	$(RM) *.aux *.log *.out *.toc *.gz *.gz\(busy\) *.blg *.bbl $(MASTER_THESIS_PDF).pdf $(TASK_PDF).pdf $(TITLE_PDF).pdf $(PRACTICE_REPORT_PDF).pdf $(COURSE_REPORT_PDF).pdf

