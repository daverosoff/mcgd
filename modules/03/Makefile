src 		= Module.Rmd
intermed	= Module.md
target 		= Module.html
targetpath	= $(abspath Module.html)
template 	= LecNotes
#css 		= http://zeus.collegeofidaho.edu/academics/MathPhysics/faculty/Rosoff/CSS/test.css
css 		= ../../css/master.css
browserprefix	= file:
browser 	= maxthon
browsertarget	= $(browserprefix)$(targetpath:C:=)
up 		= ../../schedule.html
back		= ../02/Module.html
next 		= ../04/Module.html
rscript		= Rscript.exe
rcommand	= -e 'library(knitr); knit(\"Module.Rmd\")';

all: compile

compile:
	$(rscript) $(rcommand) 
	pandoc -s --toc-depth=5 --mathjax \
	--template=$(template) --css=$(css) \
	--variable back=$(back) \
	--variable next=$(next) \
	--variable up=$(up) \
	-o $(target) -S $(intermed) 

preview: compile
	$(browser) $(browsertarget)
