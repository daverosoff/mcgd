src = LectureNotes.md
target = LectureNotes.html
template = LecNotes
css = https://zeus.collegeofidaho.edu/academics/MathPhysics/faculty/Rosoff/CSS/test.css
browser = maxthon
parent = ../../251_daily_schedule_fall_2013.html

all: compile

compile:
		pandoc -s --template=$(template) --css=$(css) \
		--variable parent=$(parent) -o $(target) -S $(src) 

preview: compile
	    $(browser) $(target)