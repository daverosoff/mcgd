src 		= Module.Rmd
intermed	= Module.md
target 		= Module.html
targetpath	= $(abspath $(target))
template 	= LecNotes
css 		= ../../css/master.css
mathjax		= https://c328740.ssl.cf1.rackcdn.com/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
browserprefix	= file://
browser 	= maxthon
browsertarget	= $(browserprefix)$(targetpath:C:=)
up 		= ../../schedule.html
back		= ../03/Module.html
next 		= ../05/Module.html
rscript		= Rscript.exe
rcommand	= -e 'library("knitr"); knit(\"$(src)\", \"$(intermed)\")';

.PHONY: all compile preview clean

all: compile

compile: $(target)

$(target): $(src)  
	$(rscript) $(rcommand) 
	pandoc -s --toc-depth=5 --mathjax=$(mathjax) \
	--template=$(template) --css=$(css) \
	--variable back=$(back) \
	--variable next=$(next) \
	--variable up=$(up) \
	-o $(target) -S $(intermed) 

preview: compile
	$(browser) $(browsertarget)

clean:
	rm $(intermed) $(target)
	

