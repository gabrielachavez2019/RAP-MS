
#For loagind all the files:

all_lytic_ms <-read.table("/home/chris/RAP-MS/A-MS-Lytic.csv", header = TRUE, sep = ",")
all_laten_ms <-read.table("/home/chris/RAP-MS/E-MS_latent.csv", header = TRUE, sep = ",")

dom_a_ms <-read.csv("/home/chris/RAP-MS/Domain_A-MS.csv", header = TRUE, sep = ",")
dom_b_ms <-read.csv("/home/chris/RAP-MS/Domain_B-MS.csv", header = TRUE, sep = ",")
dom_c_ms <-read.csv("/home/chris/RAP-MS/Domain_C-MS.csv", header = TRUE, sep = ",")


dom_a_fa <-read.csv("/home/chris/RAP-MS/Domain_A-FA.csv", header = TRUE, sep = ",")
dom_b_fa <-read.csv("/home/chris/RAP-MS/Domain_B-FA.csv", header = TRUE, sep = ",")
dom_c_fa <-read.csv("/home/chris/RAP-MS/Domain_C-FA.csv", header = TRUE, sep = ",")


barplot(all_lytic_ms$Protein.ID, all_lytic_ms$Score)

x<-all_lytic_ms$Score
x

ID <- c(all_lytic_ms$Protein.ID)

##################################
library(ggplot2)
#library(d3heatmap)
library(gplots)
library("RColorBrewer")
#library(heatmap3)
#display.brewer.all()

a <- read.csv("/home/chris/RAP-MS/A-MS-Lytic_02.csv", header = TRUE)
a_matrix <-data.matrix(a)

setEPS()
postscript("barplot_ABCD.eps")
barplot(a_matrix, col=1)
dev.off()

df <- data.frame( group = c("Lytic", "Latent"), 
                  MS = c(33, 39),
                  FA = c(9, 15))


