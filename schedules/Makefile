base 			= $(abspath presentations.html)
baseheaderlevel		= 3
browser 		= maxthon
browserprefix 		= 
mathjax			= https://c328740.ssl.cf1.rackcdn.com/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
css 			= ../css/master.css
template 		= LecNotes

.PHONY: all compile clean preview

all: compile

compile: presentations.html

preview: compile
	$(browser) $(browserprefix)$(base)

presentations.html: presentations.md
	pandoc -s --template=$(template) --css=$(css) \
	--base-header-level=$(baseheaderlevel) \
	-o $@ -S presentations.md

clean:
	rm presentations.html
