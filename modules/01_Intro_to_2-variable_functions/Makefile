src = LectureNotes.md
target = LectureNotes.html
template = LecNotes
css = https://zeus.collegeofidaho.edu/academics/MathPhysics/faculty/Rosoff/CSS/test.css
browser = maxthon

all: compile

compile:
		pandoc -s --template=$(template) --css=$(css) \
		-o $(target) -S $(src) 

preview: compile
	    $(browser) $(target)