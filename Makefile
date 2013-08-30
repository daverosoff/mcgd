src			= schedule.md
target			= schedule.html
base 			= $(abspath $(target))
browser 		= maxthon
browserprefix 		= file://
mathjax			= https://c328740.ssl.cf1.rackcdn.com/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
css 			= css/master.css
template 		= dave
MODULES 		= $(shell find modules -mindepth 1 -maxdepth 1 -type d)

.PHONY: all $(MODULES) preview clean

all: $(MODULES) $(target)

compile: $(target)

$(target): $(src)
	pandoc -s --template=$(template) --css=$(css) \
	--mathjax=$(mathjax) \
	-o $(target) -S $(src)

preview: $(target)
	$(browser) $(browserprefix)$(base)

$(MODULES):
	$(MAKE) -C $@

clean:
	rm $(target)