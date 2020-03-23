## For assistance with this file contact Steve Hojnicki at steven.hojnicki@gmail.com ##

#enter any values into vectors below
A1 <- c(42,34,39,52,47,36,43,56)
A2 <- c(55,44,34,21,50,49,40,20)
Tube <- c('B1','B2','B3','B4','B1','B2','B3','B4','B1','B2','B3','B4','B1','B2','B3','B4')

#set up the data frame for analysis
Combined <- data.frame(cbind(A1,A2))
Stacked <- stack(Combined)
Stacked <- cbind(Stacked, Tube)
colnames(Stacked) <- c('values','Prop','Tube')

#conduct the 2 way ANOVA
res.aov2 <- aov(values ~ Prop * Tube, data = Stacked)
summary(res.aov2)

#pairwise comparison tests
TukeyHSD(res.aov2, which = "Tube")

pairwise.t.test(Stacked$values,Stacked$Prop,p.adjust.method = "none" )
pairwise.t.test(Stacked$values,Stacked$Tube,p.adjust.method = "none" )


