// Change to the directory where I have the data
cd "/Users/lcollado/Dropbox/Code/graphics_2016_11_09/"

// Load x example data replacing anything I have on my session
use "x.dta", clear

// Make a boxplot of x and a histogram
histogram x
graph box x
graph box x, box(1, fcolor(dkorange)) ///
	ytitle(Our X variable) ///
	title(A nicer plot) subtitle(Made by Leonardo) ///
	caption(This plot is closer to being finished)




// Load the teds2014 data subset, again replacing the data on the session
use "teds2014.dta", clear

// Visualize the AGE variable
graph bar AGE

// Visualize CASEID by NUMSUBS
graph twoway scatter CASEID NUMSUBS
graph box CASEID, by(NUMSUBS)
