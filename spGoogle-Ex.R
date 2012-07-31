pkgname <- "spGoogle"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
library('spGoogle')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("meuse")
### * meuse

flush(stderr()); flush(stdout())

### Name: meuse
### Title: Meuse river data set
### Aliases: meuse
### Keywords: datasets

### ** Examples

data(meuse)
spRplot(meuse, "zinc")

meuse@data$title <- rep("Meuse Data", nrow(meuse@data))
spGplot(data = meuse, var = "zinc", 
	description = list(var=c("cadmium","copper", "lead"), type = "table", title = "title"))

spGplot(data = meuse, var = "zinc", 
	description = list(var=c("cadmium","copper", "lead"), type = "bar", title = "title"))

spGplot(data = meuse, var = "zinc", 
	description = list(var=c("cadmium","copper", "lead"), type = "pie", title = "title"))



cleanEx()
nameEx("meuse.grid")
### * meuse.grid

flush(stderr()); flush(stdout())

### Name: meuse.grid
### Title: Prediction Grid for Meuse Data Set
### Aliases: meuse.grid
### Keywords: datasets

### ** Examples

data(meuse.grid)
## Not run: 
##D spRplot(meuse.grid, col.pallete=list(col="lightgrey",alpha=0.5),maptype = "hybrid")
## End(Not run)



cleanEx()
nameEx("meuse.riv")
### * meuse.riv

flush(stderr()); flush(stdout())

### Name: meuse.riv
### Title: River Meuse outline
### Aliases: meuse.riv
### Keywords: datasets

### ** Examples

data(meuse.riv)
spRplot(meuse.riv,col.pallete=list(col="blue"))




cleanEx()
nameEx("rio")
### * rio

flush(stderr()); flush(stdout())

### Name: rio
### Title: Dengue Fever in the State of Rio de Janeiro
### Aliases: rio
### Keywords: datasets

### ** Examples

data(rio)

## Not run: 
##D ##Using spRplot
##D #plot the shapefile
##D spRplot(rio, col.pallete=list(col="green",alpha=0.5))
##D 
##D #plot the characteristcs of data
##D spRplot(rio,"SMR",cuts=c(0,.5,1,2,5,10),col.pallete=list(alpha=0.75))
##D spRplot(rio,"Income",cuts=c(0,.2,.4,.6,.8,1))
##D spRplot(rio,"Urban",cuts=c(0,.2,.4,.6,.8,1))
##D               
##D ##Using spGplot
##D spGplot(rio, var = "SMR", description = list(var = c("Income", "Urban"), type = "bar", title = "Name"), cuts=c(0,.5,1,2,5,10), col.pallete = list(alpha=0.8))
## End(Not run)



cleanEx()
nameEx("spGplot")
### * spGplot

flush(stderr()); flush(stdout())

### Name: spGplot
### Title: Export R information to GoogleMaps
### Aliases: spGplot
### Keywords: interface

### ** Examples
 ##see examples in \code{rio} and \code{meuse}


cleanEx()
nameEx("spRplot")
### * spRplot

flush(stderr()); flush(stdout())

### Name: spRplot
### Title: Interface GoogleMaps within R
### Aliases: spRplot
### Keywords: interface

### ** Examples
 ##see examples in \code{rio} and \code{meuse}


### * <FOOTER>
###
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
