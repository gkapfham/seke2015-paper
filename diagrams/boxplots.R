library(plyr)
library(ggplot2)

independentFull <- independent
independentFull$Criterion <- revalue(independent$Criterion,c("AI"="AICC","AN"="ANCC","AP"="APC","AU"="AUCC","I"="ICC","lAI"="ClauseAICC","N"="NCC","oAI"="CondAICC","U"="UCC"))
ggplot(data=independentFull,aes(x=Criterion,y=log(min))) + geom_boxplot() + theme(axis.text.x = element_text(angle = 35, hjust = 1)) + ggtitle("Criterion vs log(Minutes)") + ylab("Time log(minutes)")  + xlim("ClauseAICC","CondAICC","AUCC","AICC","ANCC","UCC","ICC","NCC","APC")
independentFull$DataGenerator <- revalue(independent$DataGenerator,c("a"="AVM","aD"="AVM Defaults","dR"="Directed Random","dRD"="Directed Random Defaults","r"="Random","rD"="Random Defaults"))
ggplot(data=independentFull,aes(x=DataGenerator,y=log(min))) + geom_boxplot() + theme(axis.text.x = element_text(angle = 35, hjust = 1)) + ggtitle("Data Generator vs log(Minutes)") + ylab("Time log(minutes)") + xlab("Data Generator") + xlim("Directed Random Defaults","Directed Random","AVM Defaults","AVM","Random Defaults","Random")
