##download xml file and extract data 
library(xml)
library(RCurl)
url<-getURL("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml")
doc<-xmlTreeParse(url, useInternal=TRUE)
df<-xmlToDataFrame(nodes=getNodeSet(doc,"//response/row/row"))[c("name","zipcode","neighborhood","councildistrict", "policedistrict", "location_1")]
filter(df, zipcode ==21231)

##download csv file and analyze using data.table package 
library(data.table)
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(url,destfil = "./pid.csv")
data <- fread("pid.csv")
data

##analyze XML file
data <- xmlParse("http://forecast.weather.gov/MapClick.php?lat=29.803&lon=-82.411&FcstType=digitalDWML")
xmlToDataFrame(nodes=getNodeSet(data1,"//data"))[c("location","time-layout")]
step1 <- xmlToDataFrame(nodes=getNodeSet(data1,"//location/point"))[c("latitude","longitude")]
step2 <- xmlToDataFrame(nodes=getNodeSet(data1,"//time-layout/start-valid-time"))
step3 <- xmlToDataFrame(nodes=getNodeSet(data1,"//parameters/temperature"))[c("type="hourly"")]
