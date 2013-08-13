src 		= Module.md
target 		= Module.html
targetpath	= $(abspath Module.html)
template 	= LecNotes
#css 		= http://zeus.collegeofidaho.edu/academics/MathPhysics/faculty/Rosoff/CSS/test.css
css 		= ../../css/master.css
browserprefix	= file:
browser 	= maxthon
browsertarget	= $(browserprefix)$(targetpath:C\:=)
up 		= ../../251_daily_schedule_fall_2013.html
next 		= ../02/Module.html

all: compile

compile:
	pandoc -s --mathjax \
	--template=$(template) --css=$(css) \
	--variable back=$(back) \
	--variable next=$(next) \
	--variable up=$(up) \
	-o $(target) -S $(src) 

preview: compile
	$(browser) $(browsertarget)