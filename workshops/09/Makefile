DUEDATE		= "October 30, 2013"
COURSE		= "Math 251"
TERM		= "Fall 2013"
template 	= workshop.latex
baseheaderlevel = 1
src 		= Workshop.Rmd
knitted		= Workshop.md
intermed 	= Workshop.tex
target 		= Workshop.pdf
targetpath	= $(abspath $(target))
browser		= SumatraPDF
editor		= sublime_text
rscript 	= Rscript.exe
rcommand	= -e 'library(knitr); knit(\"$(src)\", \"$(knitted)\")'

.PHONY: all clean compile texonly preview preview_tex

all: $(intermed) $(target)

compile: $(target)

texonly: $(intermed)

$(target): $(src)
	$(rscript) $(rcommand)
	pandoc -s --variable DUEDATE=$(DUEDATE) \
	--variable COURSE=$(COURSE) --variable TERM=$(TERM) \
	--variable header-includes="\usepackage{rosoff}" \
	--variable header-includes="\usepackage{rosoff-vector-macros}" \
	--template=$(template) --base-header-level=$(baseheaderlevel) \
	-S -o $(target) $(knitted)

$(intermed): $(src)
	$(rscript) $(rcommand)
	pandoc -s --variable DUEDATE=$(DUEDATE) \
	--variable COURSE=$(COURSE) --variable TERM=$(TERM) \
	--variable header-includes="\usepackage{rosoff}" \
	--variable header-includes="\usepackage{rosoff-vector-macros}" \
	--template=$(template) --base-header-level=$(baseheaderlevel) \
	-S -o $(intermed) $(knitted)

preview: $(target)
	$(browser) $(targetpath)

preview_tex: $(intermed)
	$(editor) $(intermed)

clean:
	rm $(intermed) $(target) $(knitted)