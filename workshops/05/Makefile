DUEDATE		= "Monday, October 7"
COURSE		= "Math 251"
TERM		= "Fall 2013"
template 	= workshop.latex
baseheaderlevel = 1
src 		= Workshop.Rmd
knitted		= Workshop.md
intermed 	= Workshop.tex
target 		= Workshop.pdf
targetpath	= $(abspath $(target))
rubricsrc       = Rubric.md
rubrictarget	= Rubric-w05.pdf
rubrictemplate	= handout.latex
browser		= SumatraPDF
editor		= sublime_text
rscript = 	Rscript.exe
rcommand	= -e 'library(knitr); knit(\"$(src)\", \"$(knitted)\")'

.PHONY: all clean compile texonly preview preview_tex

all: $(intermed) $(target) $(rubrictarget)

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

$(rubrictarget): $(rubricsrc)
	pandoc -s \
	--variable COURSE=$(COURSE) --variable TERM=$(TERM) \
	--variable header-includes="\usepackage{rosoff}" \
	--variable header-includes="\usepackage{rosoff-vector-macros}" \
	--template=$(template) --base-header-level=$(baseheaderlevel) \
	-S -o $(rubrictarget) $(rubricsrc)

preview: $(target)
	$(browser) $(targetpath)

preview_tex: $(intermed)
	$(editor) $(intermed)

clean:
	rm $(intermed) $(target) $(knitted) $(rubrictarget)