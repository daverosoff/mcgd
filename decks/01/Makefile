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
title		= "Section 2.1: Limits, Rates of Change, and Tangent Lines"
author		= "Mathematics 151 Calculus 1"
mathjax		= https://c328740.ssl.cf1.rackcdn.com/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
browser		= SumatraPDF

.PHONY: all compile preview

all: compile

compile: $(target)

preview: compile
	$(browser) $(target)

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