COURSE		= "Math 251"
TERM		= "Fall 2013"
TIME		= 10
template 	= handout.latex
baseheaderlevel = 1
src 		= 12.3.48-solution-coordinate-free.md
intermed 	= 12.3.48-solution-coordinate-free.tex
target 		= 12.3.48-solution-coordinate-free.pdf
targetpath	= $(abspath $(target))
browser		= SumatraPDF
editor		= sublime_text

.PHONY: all clean compile texonly preview preview_tex

all: $(intermed) $(target)

compile: $(target)

texonly: $(intermed)

$(target): $(src)
	pandoc -s \
	--variable header-includes="\usepackage{rosoff}" \
	--variable header-includes="\usepackage{rosoff-vector-macros}" \
	--template=$(template) --base-header-level=$(baseheaderlevel) \
	-S -o $(target) $(src)

$(intermed): $(src)
	pandoc -s \
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