presentations_src	= presentations.md
presentations_target	= presentations.html
main_src		= main.md
main_target		= main.html
base 			= $(abspath $(target))
baseheaderlevel		= 3
browser 		= C:\Users\drosoff\AppData\Local\Google\Chrome\Application\chrome.exe
browserprefix 		= 
mathjax			= https://c328740.ssl.cf1.rackcdn.com/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
css 			= ../css/master.css
template 		= LecNotes

.PHONY: all compile clean preview

.SUBLIME-TARGETS: all compile clean preview $(presentations_target) $(main_target)

all: compile

compile: $(presentations_target) $(main_target)

preview: compile
	$(browser) $(browserprefix)$(base)

$(main_target): $(main_src)
	pandoc -s --template=$(template) --css=$(css) \
	--base-header-level=$(baseheaderlevel) \
	-o $@ -S $(main_src)

$(presentations_target): $(presentations_src)
	pandoc -s --template=$(template) --css=$(css) \
	--base-header-level=$(baseheaderlevel) \
	-o $@ -S $(presentations_src)

clean:
	rm $(presentations_target) $(main_target)
