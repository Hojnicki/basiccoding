## For assistance with this file contact Steve Hojnicki at steven.hojnicki@gmail.com ##

#Enter any values into vectors below
vector1 <- c(19,20,19,30,8)
vector2 <- c(80,61,73,56,80)
vector3 <- c(47,26,25,35,50)
vector4 <- c(95,46,83,78,97)


Combined <- data.frame(cbind(vector1, vector2, vector3, vector4)) #creates a single data frame
summary(Combined) #stats on dataframe (optional)
Stacked <- stack(Combined) #stacks data frame
anovaResults <- aov(values~ind, data = Stacked) #calculates ANOVA
summary(anovaResults) #displays results table


#Analysis of Population Means
pairwise.t.test(Stacked$values,Stacked$ind,p.adjust.method = "bonferroni" )
TukeyHSD(anovaResults)

library('agricolae')
scheffe.test(values~ind, data = Stacked)

#If you cannot assume normalilty 
kruskal.test(values~ind, data = Stacked) #not matching correctly
qchisq(.95,3)

var.test(values~ind, data = Stacked)

#Analysis of Population Variances
bartlett.test(values~ind, data = Stacked)
qchisq(.95,3)

library('car')
leveneTest(values~ind, data = Stacked)
qf(.95,3,16) #(.95, a-1, N-a)

#Hartley test use table for H critical value
max(var(vector1),var(vector2),var(vector3),var(vector4))/min(var(vector1),var(vector2),var(vector3),var(vector4))
