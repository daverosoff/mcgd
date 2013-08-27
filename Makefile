base 			= $(abspath schedule.md)
browser 		= maxthon
browserprefix 		= file://
css 			= css/master.css
template 		= dave
MODULES 		= $(shell find modules -maxdepth 1 -type d)

.PHONY: all $(MODULES) preview

all: $(MODULES) schedule.html

schedule.html: 
	pandoc -s --template=$(template) --css=$(css) \
	-o schedule.html -S schedule.md

preview: schedule.html
	$(browser) $(browserprefix)$(base)/$(target)

$(MODULES):
	$(MAKE) -C $@