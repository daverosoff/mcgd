COURSE		= "Math 251"
TERM		= "Fall 2013"
TIME		= 10
template 	= quiz.latex
baseheaderlevel = 1
src 		= Quiz.md
intermed 	= Quiz.tex
target 		= Quiz.pdf
targetpath	= $(abspath $(target))
browser		= SumatraPDF
editor		= sublime_text

.PHONY: all clean compile texonly preview preview_tex

all: $(intermed) $(target)

compile: $(target)

texonly: $(intermed)

$(target): $(src)
	pandoc -s --variable COURSE=$(COURSE) \
	--variable TERM=$(TERM) --variable TIME=$(TIME) \
	--variable header-includes="\usepackage{rosoff}" \
	--variable header-includes="\usepackage{rosoff-vector-macros}" \
	--template=$(template) --base-header-level=$(baseheaderlevel) \
	-S -o $(target) $(src)

$(intermed): $(src)
	pandoc -s --variable COURSE=$(COURSE) \
	--variable TERM=$(TERM) --variable TIME=$(TIME) \
	--variable header-includes="\usepackage{rosoff}" \
	--variable header-includes="\usepackage{rosoff-vector-macros}" \
	--template=$(template) --base-header-level=$(baseheaderlevel) \
	-S -o $(intermed) $(src)

preview: $(target)
	$(browser) $(targetpath)

preview_tex: $(intermed)
	$(editor) $(intermed)

clean:
	rm $(intermed) $(target)