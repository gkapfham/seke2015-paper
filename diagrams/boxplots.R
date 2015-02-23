independentFull$Criterion <- revalue(independent$Criterion,c("AI"="AICC","AN"="ANCC","AP"="APC","AU"="AUCC","I"="ICC","lAI"="ClauseAICC","N"="NCC","oAI"="CondAICC","U"="UCC"))
ggplot(data=independentFull,aes(x=Criterion,y=log(min))) + geom_boxplot() + theme(axis.text.x = element_text(angle = 35, hjust = 1)) + ggtitle("Criterion vs Time") + ylab("Time log(minuites)")
independentFull$DataGenerator <- revalue(independent$DataGenerator,c("a"="avs","aD"="avs defaults","dR"="directed random","dRD"="directed random defaults","r"="random","rD"="random defaults"))
ggplot(data=independentFull,aes(x=DataGenerator,y=log(min))) + geom_boxplot() + theme(axis.text.x = element_text(angle = 35, hjust = 1)) + ggtitle("Data Generator vs Time") + ylab("Time log(minuites)") + xlab("Data Generator")
