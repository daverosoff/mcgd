base 			= $(abspath schedule.html)
browser 		= maxthon
browserprefix 		= file://
css 			= css/master.css
template 		= dave
MODULES 		= $(shell find modules -mindepth 1 -maxdepth 1 -type d)

.PHONY: all $(MODULES) preview

all: $(MODULES) schedule.html

compile: schedule.html

schedule.html: schedule.md
	pandoc -s --template=$(template) --css=$(css) \
	-o schedule.html -S schedule.md

preview: schedule.html
	$(browser) $(browserprefix)$(base)

$(MODULES):
	$(MAKE) -C $@