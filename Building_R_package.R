#This script is used to build an R package; see here for details https://r-pkgs.org/index.html




#####################################################
#1.5 Colophon
#####################################################


library(devtools)
library(roxygen2)
library(testthat)

devtools::session_info()





#####################################################
#2. The whole game
#####################################################

#2.1 Load devtools and friends

library(devtools)

packageVersion("devtools")



library(tidyverse)
library(fs)


#2.2 Toy package: foofactors
#2.3 Peek at the finished product


#2.4 create_package()

create_package("C:/Users/kyles/Desktop/foofactors")



#2.5 use_git()

use_git()  


#2.6 Write the fist function

(a <- factor(c("character", "hits", "your", "eyeballs")))


(b <- factor(c("but", "integer", "where it", "counts")))

c(a,b)


factor(c(as.character(a), as.character(b)))

fbind <- function(a, b) {
  factor(c(as.character(a), as.character(b)))
}



#2.7 use_r()

use_r("fbind")




#2.8 load_all()

load_all()
rm(list = c("fbind"))
load_all()

fbind(a, b)

exists("fbind", where = globalenv(), inherits = FALSE)




#2.8.1 Commit fbind()





#2.9 check()

check()






#2.11 use_mit_license()

use_mit_license("Kyle Vincent")





#2.12 document()


document()

?fbind




#2.12.1 NAMESPACE changes






#2.13 check() again

check()








#2.14 install()

install()




library(foofactors)

a <- factor(c("character", "hits", "your", "eyeballs"))
b <- factor(c("but", "integer", "where it", "counts"))

fbind(a, b)





#2.15 use_testthat()

use_testthat()


use_test("fbind")


test()






#2.16 use_package()

use_package("forcats")

use_r("fcount")


load_all()

fcount(iris$Species)

document()



#2.17 use_github()







#2.18 use_readme_rmd()

use_readme_rmd()



build_readme()


check()


install()





















