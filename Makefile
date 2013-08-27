src 			= schedule.md
target 			= schedule.html
template 		= dave
#css 			= http://zeus.collegeofidaho.edu/academics/MathPhysics/faculty/Rosoff/CSS/test.css
base 			= u:/courses/M251
css 			= css/master.css
browser 		= maxthon
browserprefix 	= file://

all: schedule

schedule: 
		pandoc -s --template=$(template) --css=$(css) \
		-o $(target) -S $(src)

preview: schedule
		$(browser) $(browserprefix)$(base)/$(target)
