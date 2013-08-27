src 		= Module.md
target 		= Module.html
targetpath	= $(abspath Module.html)
template 	= LecNotes
#css 		= http://zeus.collegeofidaho.edu/academics/MathPhysics/faculty/Rosoff/CSS/test.css
css 		= ../../css/master.css
browserprefix	= file://
browser 	= maxthon
browsertarget	= $(targetpath)
up 		= ../../schedule.html
back		= ../01/Module.html
next 		= ../03/Module.html

.PHONY: all compile preview

all: compile

compile: $(target)

$(target): $(src)
	pandoc -s --toc --mathjax \
	--template=$(template) --css=$(css) \
	--variable back=$(back) \
	--variable next=$(next) \
	--variable up=$(up) \
	-o $(target) -S $(src) 

preview: compile
	$(browser) $(browsertarget)
