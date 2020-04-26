

#RAP-MS analysis

AFA1 <- read.table("Domain_A-FA.csv", header = TRUE, sep = ',', fill = TRUE)

AFA2 <- read.table("Domain_A-FA_no_comments.csv", header = TRUE, sep = ',', fill=TRUE)

plot(AFA2[,1], AFA2[,3])

plot(AFA2$Score,AFA2$X..Coverage)


