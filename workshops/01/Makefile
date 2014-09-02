DUEDATE		= "Friday, September 13"
COURSE		= "Math 275"
TERM		= "Fall 2014"
template 	= workshop.latex
baseheaderlevel = 1
src 		= Workshop.md
intermed 	= Workshop.tex
target 		= Workshop.pdf
targetpath	= $(abspath $(target))
browser		= SumatraPDF
editor		= sublime_text

.PHONY: all clean compile texonly preview preview_tex

all: $(intermed) $(target)

compile: $(target)

texonly: $(intermed)

$(target): $(src)
	pandoc -s --variable DUEDATE=$(DUEDATE) \
	--variable COURSE=$(COURSE) --variable TERM=$(TERM) \
	--template=$(template) --base-header-level=$(baseheaderlevel) \
	-S -o $(target) $(src)

$(intermed): $(src)
	pandoc -s --variable DUEDATE=$(DUEDATE) \
	--variable COURSE=$(COURSE) --variable TERM=$(TERM) \
	--template=$(template) --base-header-level=$(baseheaderlevel) \
	-S -o $(intermed) $(src)

preview: $(target)
	$(browser) $(targetpath)

preview_tex: $(intermed)
	$(editor) $(intermed)

clean:
	rm $(intermed) $(target)