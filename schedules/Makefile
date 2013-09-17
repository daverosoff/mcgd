src			= presentations.md
target			= presentations.html
base 			= $(abspath $(target))
baseheaderlevel		= 3
browser 		= maxthon
browserprefix 		= 
mathjax			= https://c328740.ssl.cf1.rackcdn.com/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
css 			= ../css/master.css
template 		= LecNotes

.PHONY: all compile clean preview

all: compile

compile: $(target)

preview: compile
	$(browser) $(browserprefix)$(base)

$(target): $(src)
	pandoc -s --template=$(template) --css=$(css) \
	--base-header-level=$(baseheaderlevel) \
	-o $@ -S $(src)

clean:
	rm $(target)
