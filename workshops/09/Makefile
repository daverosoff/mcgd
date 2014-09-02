DUEDATE		= "October 30, 2013"
COURSE		= "Math 275"
TERM		= "Fall 2014"
template 	= workshop.latex
soltemplate 	= solution.latex
baseheaderlevel = 1
src 		= Workshop.Rmd
solsrc		= Workshop-solution.Rmd
knitted		= Workshop.md
solknitted	= Workshop-solution.md
intermed 	= Workshop.tex
solintermed	= Workshop-solution.tex
target 		= Workshop.pdf
targetpath	= $(abspath $(target))
soltarget	= Workshop-solution.pdf
soltargetpath	= $(abspath $(soltarget))
browser		= SumatraPDF
editor		= sublime_text
rscript 	= Rscript.exe
rcommand	= -e 'library(knitr); knit(\"$(src)\", \"$(knitted)\")'
solrcommand	= -e 'library(knitr); knit(\"$(solsrc)\", \"$(solknitted)\")'

.PHONY: all clean compile texonly preview preview_tex

all: $(intermed) $(target) $(solintermed) $(soltarget)

compile: $(target) $(soltarget)

texonly: $(intermed) $(solintermed)

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

$(soltarget): $(solsrc)
	$(rscript) $(solrcommand)
	pandoc -s --variable DUEDATE=$(DUEDATE) \
	--variable COURSE=$(COURSE) --variable TERM=$(TERM) \
	--variable header-includes="\usepackage{rosoff}" \
	--variable header-includes="\usepackage{rosoff-vector-macros}" \
	--template=$(soltemplate) --base-header-level=$(baseheaderlevel) \
	-S -o $(soltarget) $(solknitted)

$(solintermed): $(solsrc)
	$(rscript) $(solrcommand)
	pandoc -s --variable DUEDATE=$(DUEDATE) \
	--variable COURSE=$(COURSE) --variable TERM=$(TERM) \
	--variable header-includes="\usepackage{rosoff}" \
	--variable header-includes="\usepackage{rosoff-vector-macros}" \
	--template=$(soltemplate) --base-header-level=$(baseheaderlevel) \
	-S -o $(solintermed) $(solknitted)

preview: $(target)
	$(browser) $(targetpath)

preview_tex: $(intermed)
	$(editor) $(intermed)

clean:
	rm $(intermed) $(target) $(knitted)