#Choosing the Best Clustering algorithm#comparison algorithms
install.packages("clValid")
library(clValid)
data("iris")
gf<-scale(iris[,-5])
head(gf)
clmethods<-c("hierarchical","kmeans","pam")
intern <- clValid(gf, nClust = 2:6,
                  clMethods = clmethods, validation = "internal")
summary(intern)
# Stability measures
clmethodss<-c("hierarchical","kmeans","pam")
stab<-clValid(gf,nClust = 2:6,clMethods = clmethodss,validation = "stability")
# Display only optimal Scores
optimalScores(stab)
