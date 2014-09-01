target		= Deck.pdf
intermed	= Deck.tex
knitted		= Deck.md
src		= Deck.Rmd
template	= beamer.latex
fontsize	= 11pt
theme		= Szeged
colortheme	= crane
fonttheme	= structurebold
listings	= R
numbersections	= 
mathjax		= https://c328740.ssl.cf1.rackcdn.com/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
browser		= SumatraPDF
rscript		= Rscript.exe
rcommand	= -e 'library(knitr); knit(\"$(src)\", \"$(knitted)\")'

.PHONY: all compile preview clean

all: compile $(intermed)
	
compile: $(target)

preview: compile
	$(browser) $(target)

$(intermed): $(src)
	$(rscript) $(rcommand)
	pandoc -s -t beamer -i --variable theme=$(theme) \
	--variable colortheme=$(colortheme) \
	--variable fonttheme=$(fonttheme) \
	--variable listings=$(listings) \
	--variable fontsize=$(fontsize) \
	--variable numbersections=$(numbersections) \
	--variable header-includes="\usepackage{rosoff}" \
	--variable header-includes="\usepackage{rosoff-vector-macros}" \
	--mathjax=$(mathjax) --template=$(template) \
	-o $(intermed) -S $(knitted) 

$(target): $(src)
	$(rscript) $(rcommand)
	pandoc -s -t beamer -i --variable theme=$(theme) \
	--variable colortheme=$(colortheme) \
	--variable fonttheme=$(fonttheme) \
	--variable listings=$(listings) \
	--variable fontsize=$(fontsize) \
	--variable numbersections=$(numbersections) \
	--variable header-includes="\usepackage{rosoff}" \
	--variable header-includes="\usepackage{rosoff-vector-macros}" \
	--mathjax=$(mathjax) --template=$(template) \
	-o $(target) -S $(knitted)

clean:
	rm $(target) $(intermed)