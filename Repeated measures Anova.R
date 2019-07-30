#11/02/2019
#One way anova repeated measures model using R.
#CIAT data and research methods project
#Prepared by Rachael Mburu

#Setting the working directory.
setwd("C:/Users/Rachael Mburu/Desktop/Data & Research methods")
#Importing data to R.
Kawanda_yield= read.csv("Kawanda_yield.csv")
#Viewing data
View(Kawanda_yield)
#Transforming treatments into a factor
Kawanda_yield$Treatment=as.factor(Kawanda_yield$Treatment)
#Transforming seasons into a factor
Kawanda_yield$Season=as.factor(Kawanda_yield$Season)
#Fitting a one way repeated measuresanova model for two seasons of Kawanda yield data.
Repeated_fit=aov(Grain.yield..kg.plot..5.625m2.~Season+Error(Treatment/Season),data = Kawanda_yield)
#Computing the summary of the model.
summary(Repeated_fit)
#Fitting a two way repeated measures anova model for two seasons of Kawanda yield data.
Repeated_fit1=aov(Grain.yield..kg.plot..5.625m2.~Treatment*Season+Error(Id/Treatment*Season),data = Kawanda_yield)
#Computing the summary of the model.
summary(Repeated_fit1)

# End.
