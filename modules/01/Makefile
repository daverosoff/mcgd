src = Module.md
target = Module.html
template = LecNotes
css = http://zeus.collegeofidaho.edu/academics/MathPhysics/faculty/Rosoff/CSS/test.css
browser = maxthon
up = ../../251_daily_schedule_fall_2013.html
back = nil
next = ../02/Module.html

all: compile

compile:
		pandoc -s \
		--template=$(template) --css=$(css) \
		--variable back=$(back) \
		--variable next=$(next) \
		--variable up=$(up) \
		-o $(target) -S $(src) 

preview: compile
	    $(browser) $(target)