target		= Deck.pdf
intermed	= Deck.tex
src		= Deck.md
template	= beamer.latex
fontsize	= 11pt
theme		= Szeged
colortheme	= crane
fonttheme	= structurebold
listings	= R
numbersections	= 
mathjax		= https://c328740.ssl.cf1.rackcdn.com/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
browser		= SumatraPDF

.PHONY: all compile preview clean

all: $(intermed) compile 

compile: $(target)

preview: compile
	$(browser) $(target)

$(intermed): $(src)
	pandoc -s -t beamer -i --variable theme=$(theme) \
	--variable colortheme=$(colortheme) \
	--variable fonttheme=$(fonttheme) \
	--variable listings=$(listings) \
	--variable fontsize=$(fontsize) \
	--variable numbersections=$(numbersections) \
	--variable include-pkg="\usepackage{siunitx}" \
	--variable header-includes="\include{vectormacros.tex}" \
	--mathjax=$(mathjax) --template=$(template) \
	-o $(intermed) -S $(src) 

$(target): $(src)
	pandoc -s -t beamer -i --variable theme=$(theme) \
	--variable colortheme=$(colortheme) \
	--variable fonttheme=$(fonttheme) \
	--variable listings=$(listings) \
	--variable fontsize=$(fontsize) \
	--variable numbersections=$(numbersections) \
	--variable include-pkg="\usepackage{siunitx}" \
	--mathjax=$(mathjax) --template=$(template) \
	-o $(target) -S $(src)

clean:
	rm $(target) $(intermed)