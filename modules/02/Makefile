src 			= Module.md
target 			= Module.html
template 		= LecNotes
#css 			= http://zeus.collegeofidaho.edu/academics/MathPhysics/faculty/Rosoff/CSS/test.css
base 			= c:/users/drosoff/documents/courses/M251/modules/02
css 			= ../../css/master.css
browser 		= maxthon
browserprefix 	= file://
up 				= ../../251_daily_schedule_fall_2013.html
back 			= ../01/Module.html
next 			= ../03/Module.html

all: compile

compile:
		pandoc -s --mathjax \
		--template=$(template) --css=$(css) \
		--variable back=$(back) \
		--variable next=$(next) \
		--variable up=$(up) \
		-o $(target) -S $(src) 

preview: compile
		$(browser) $(browserprefix)$(base)/$(target)