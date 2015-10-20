library(data.table)
library(R.utils)

read_StormData <- function() {
    compressed_file_path <- "data/StormData.csv.bz2"
    download.file(
        "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2",
        destfile = compressed_file_path)
    uncompressed_file_path <- bunzip2(compressed_file_path)
    data <- fread(uncompressed_file_path)
}

download_docs <- function() {
    download.file("https://d396qusza40orc.cloudfront.net/repdata%2Fpeer2_doc%2Fpd01016005curr.pdf",
                  destfile = "data/StormData_documentation.pdf", mode = "wb")
    download.file("https://d396qusza40orc.cloudfront.net/repdata%2Fpeer2_doc%2FNCDC%20Storm%20Events-FAQ%20Page.pdf",
                  destfile = "data/FAQ.pdf", mode = "wb")
}
