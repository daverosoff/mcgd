font-size 	= 12pt
include-pkg 	= rosoff-vector-macros
COURSE		= "Mathematics 251"
TERM		= "Fall 2013"
INSTRUCTIONS	= instructions.tex
BONUS		=
template 	= exam.latex
soltemplate	= solution.latex
src 		= Exam.Rmd
intermed	= Exam.md
solintermed	= Solution.md
target		= Exam.pdf
soltarget	= Solution.pdf
browser		= SumatraPDF
browsertarget	= $(abspath $(target))
rscript		= Rscript.exe
rcommand	= -e 'library(knitr); knit(\"$(src)\", \"$(intermed)\")'

.PHONY: all compile preview clean key

all: $(target) key

compile: $(target)

preview: compile
	$(browser) $(browsertarget)

clean:
	rm $(target) $(intermed) figure/*

key: $(src) 
	$(rscript) $(rcommand)
	pandoc -s --variable COURSE=$(COURSE) \
	--variable TERM=$(TERM) --variable font-size=$(font-size) \
	--variable include-pkg=$(include-pkg) \
	--template=$(soltemplate) \
	-S -o $(soltarget) $(intermed)

$(target): $(src) $(INSTRUCTIONS)
	$(rscript) $(rcommand)
	pandoc -s --variable COURSE=$(COURSE) \
	--variable TERM=$(TERM) --variable font-size=$(font-size) \
	--variable include-pkg=$(include-pkg) \
	--variable INSTRUCTIONS=$(INSTRUCTIONS) \
	--variable BONUS=$(BONUS) --template=$(template) \
	-S -o $(target) $(intermed)

