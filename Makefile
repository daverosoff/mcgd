src			= schedule.md
target			= schedule.html
base 			= $(abspath $(target))
browser 		= maxthon
browserprefix 		= file://
mathjax			= https://c328740.ssl.cf1.rackcdn.com/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
up			= index.html
css 			= css/master.css
template 		= LecNotes
MODULES 		= $(shell find modules -mindepth 1 -maxdepth 1 -type d)
WORKSHOPS		= $(shell find workshops -mindepth 1 -maxdepth 1 -type d)
DECKS			= $(shell find decks -mindepth 1 -maxdepth 1 -type d)
QUIZZES			= $(shell find quizzes -mindepth 1 -maxdepth 1 -type d)

.PHONY: all $(MODULES) $(WORKSHOPS) $(DECKS) $(QUIZZES) preview clean

.SUBLIME_TARGETS: all compile preview clean schedule.html

compile: $(target) index.html

all: $(MODULES) $(WORKSHOPS) $(DECKS) $(QUIZZES) $(target) index.html

index.html: index.md
	pandoc -s --template=$(template) --css=$(css) \
	--mathjax=$(mathjax) \
	-o index.html -S index.md

$(target): $(src)
	pandoc -s --template=$(template) --css=$(css) \
	--mathjax=$(mathjax) --variable up=$(up) \
	-o $(target) -S $(src)

preview: $(target)
	$(browser) $(browserprefix)$(base)

$(MODULES):
	$(MAKE) -C $@

$(WORKSHOPS):
	$(MAKE) -C $@

$(DECKS):
	$(MAKE) -C $@

$(QUIZZES):
	$(MAKE) -C $@

clean:
	rm $(target) index.html
