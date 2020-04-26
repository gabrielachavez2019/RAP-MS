x<-read.table("data.human.tex", header=TRUE)
> x
            ID Method PMAIT   FDR RL
1  1_all_lytic     MS   148 27.03 39
2  2_all_lytic     FA   203 22.17 46
3 3_all_latent     MS    85 35.29 16
4 4_all_latent     FA   113 28.32 23
> plot(x)
> x$
x$ID      x$Method  x$PMAIT   x$FDR     x$RL      
> x$FDR
[1] 27.03 22.17 35.29 28.32
> barplot(x$FDR)
> barplot(x$RL)
> plot(x$FDR)
> library(ggplot2)
> bp <-ggplot(x, aes(x="", y=x$RL, fill=x$Method))+geom_bar(width = 1, stat="identity")
> bp
> pie <- bp + coord_polar("y",start=0)
> pie
> pie + scale_fill_brewer(palette="Dark2")
> png("RL_Method.png")
> pie + scale_fill_brewer(palette="Dark2")
> dev.off()
X11cairo 
       2 
> bp <-ggplot(x, aes(x="", y=x$, fill=x$Method))+geom_bar(width = 1, stat="identity")
x$ID      x$Method  x$PMAIT   x$FDR     x$RL      
> bp <-ggplot(x, aes(x="", y=x$PMAIT, fill=x$Method))+geom_bar(width = 1, stat="identity")
> pie <- bp + coord_polar("y",start=0)
> pie + scale_fill_brewer(palette="Dark2")
> png("PMAIT_Method.png")
> pie + scale_fill_brewer(palette="Dark2")
> dev.off()
X11cairo 
       2 
> setEPS()
> postscript("PMAIT_method.eps")
> pie + scale_fill_brewer(palette="Dark2")
> dev.off()
X11cairo 
       2 
> bp <-ggplot(x, aes(x="", y=x$PMAIT, fill=x$FDR))+geom_bar(width = 1, stat="identity")
> pie <- bp + coord_polar("y",start=0)
> pie + scale_fill_brewer(palette="Dark2")
Error: Continuous value supplied to discrete scale
> bp <-ggplot(x, aes(x="", y=x$FDR, fill=x$Method))+geom_bar(width = 1, stat="identity")
> pie <- bp + coord_polar("y",start=0)
> pie + scale_fill_brewer(palette="Dark2")
> setEPS()
> postscript("FDR_method.eps")
> pie + scale_fill_brewer(palette="Dark2")
> dev.off()
X11cairo 

