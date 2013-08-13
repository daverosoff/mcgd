src 			= 251_daily_schedule_fall_2013.markdown
target 			= 251_daily_schedule_fall_2013.html
template 		= dave
#css 			= http://zeus.collegeofidaho.edu/academics/MathPhysics/faculty/Rosoff/CSS/test.css
base 			= u:/courses/M251
css 			= css/master.css
browser 		= maxthon
browserprefix 	= file://

all: compile

compile: 
		pandoc -s --template=$(template) --css=$(css) \
		-o $(target) -S $(src)

preview: compile
		$(browser) $(browserprefix)$(base)/$(target)
