COURSE		= "Math 251"
TERM		= "Fall 2013"
TIME		= 35
template 	= quiz.latex
baseheaderlevel = 1
src 		= Quiz.md
solsrc 		= Quiz-solution.md
intermed 	= Quiz.tex
solintermed 	= Quiz-solution.tex
target 		= Quiz.pdf
soltarget 	= Quiz-solution.pdf
targetpath	= $(abspath $(target))
soltargetpath	= $(abspath $(soltarget))
browser		= SumatraPDF
editor		= sublime_text

.PHONY: all clean compile texonly key preview preview_tex preview_sol

all: $(intermed) $(target) $(soltarget)

compile: $(target)

texonly: $(intermed)

key: $(soltarget)

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

$(soltarget): $(solsrc)
	pandoc -s --variable COURSE=$(COURSE) \
	--variable TERM=$(TERM) --variable TIME=$(TIME) \
	--variable header-includes="\usepackage{rosoff}" \
	--variable header-includes="\usepackage{rosoff-vector-macros}" \
	--template=solution.latex --base-header-level=$(baseheaderlevel) \
	-S -o $(soltarget) $(solsrc)

$(solintermed): $(solsrc)
	pandoc -s --variable COURSE=$(COURSE) \
	--variable TERM=$(TERM) --variable TIME=$(TIME) \
	--variable header-includes="\usepackage{rosoff}" \
	--variable header-includes="\usepackage{rosoff-vector-macros}" \
	--template=solution.latex --base-header-level=$(baseheaderlevel) \
	-S -o $(solintermed) $(solsrc)

preview: $(target)
	$(browser) $(targetpath)

preview_sol: $(soltarget)
	$(browser) $(soltargetpath)	

preview_tex: $(intermed)
	$(editor) $(intermed)

clean:
	rm $(intermed) $(target)