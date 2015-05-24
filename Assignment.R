#Question1

install.packages("httr")
install.packages("httpuv")
library(httpuv)
library(httr)
oauth_endpoints("github")

myapp <- oauth_app("github", 
                    key = "0f5e3ed039766dea040f", 
                    secret = "2d2518fe9d85cdd167cb0f57b1c152a3dcb285dc") 

github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)
gtoken <- config(token = github_token)
req <- GET("https://api.github.com/users/jtleek/repos", gtoken)
json1=content(req)
install.packages("rjson")
json2=jsonlite::fromJSON(toJSON(json1))

#Question2
setwd("C:/Yohannes/DATA SCIENCE STUDY/Getting and cleaning data/Week2")
fileurl="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(fileurl,"./acs.csv")

#Question4
con=url("http://biostat.jhsph.edu/~jleek/contact.html")
htmlCode=readLines(con)
nchar(htmlCode[c(10,20,30,100)])


#Question5



