read_StormData <- function() {
    file_path <- "data/StormData.csv.bz2"
    if (!file.exists(file_path)) {
        download.file(
            "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2",
            destfile = file_path)
    }
    read.csv("data/StormData.csv.bz2")
}

download_docs <- function() {
    download.file("https://d396qusza40orc.cloudfront.net/repdata%2Fpeer2_doc%2Fpd01016005curr.pdf",
                  destfile = "data/StormData_documentation.pdf")
    download.file("https://d396qusza40orc.cloudfront.net/repdata%2Fpeer2_doc%2FNCDC%20Storm%20Events-FAQ%20Page.pdf",
                  destfile = "data/FAQ.pdf")
}

StormData <- read_StormData()
