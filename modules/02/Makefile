src 		= Module.Rmd
intermed	= Module.md
target 		= Module.html
targetpath	= $(abspath $(target))
template 	= LecNotes
#css 		= http://zeus.collegeofidaho.edu/academics/MathPhysics/faculty/Rosoff/CSS/test.css
css 		= ../../css/master.css
mathjax		= https://c328740.ssl.cf1.rackcdn.com/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
browserprefix	= file://
browser 	= maxthon
browsertarget	= $(targetpath)
up 		= ../../schedule.html
back		= ../01/Module.html
next 		= ../03/Module.html
rscript		= Rscript.exe
rcommand	= -e 'library(knitr); knit(\"$(src)\", \"$(intermed)\")'

.PHONY: all compile preview clean

all: compile

compile: $(target)

$(target): $(src)
	$(rscript) $(rcommand)
	pandoc -s --toc --mathjax=$(mathjax) \
	--template=$(template) --css=$(css) \
	--variable back=$(back) \
	--variable next=$(next) \
	--variable up=$(up) \
	-o $(target) -S $(intermed) 

preview: compile
	$(browser) $(browsertarget)

clean:
	rm $(intermed) $(target)