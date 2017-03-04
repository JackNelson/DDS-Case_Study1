#download the 2 files
dir<-getwd()
downloader::download("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", destfile=paste(dir,"/data/GDP.csv",sep=""))
downloader::download("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv", destfile=paste(dir,"/data/EDSTATS.csv",sep=""))
# (JN) in two lines above destfile=/data/file.csv instead of absolute paths?

#assign the two files to dataframes-replace blanks with NA
GDP<-read.csv("data/GDP.csv",stringsAsFactors=FALSE, header=FALSE)
EDDATA<-read.csv("data/EDSTATS.csv",stringsAsFactors=FALSE, header=TRUE, na.strings=c(""))
# (JN) do we need to assign dataframes in this file? Maybe take two lines above and move to tidy document