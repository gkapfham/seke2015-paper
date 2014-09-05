library("ggplot2", lib.loc="/home/royokou/R/x86_64-pc-linux-gnu-library/3.0")
DoubleChecksoniTrust <- read.csv("~/Documents/schematestcomplexityanalyst/data/DoubleChecksoniTrust.csv")
data <- DoubleChecksoniTrust
p1 <- ggplot(data, aes(x=2^Doubles, y=Time))
p2 <- p1 + geom_smooth(method="lm",formula = y~ poly(x,2))
lm_eqn = function(df){
m=lm(Time ~ poly(2^Doubles, 2), df)#2nd degree polynomial
eq <- substitute(italic(y) == a + b %.% italic(x)* + c %.% italic(x)^2* ","~~italic(r)^2~"="~r2,
list(a = format(coef(m)[1], digits = 2),
b = format(coef(m)[2], digits = 2),
c = format(coef(m)[3], digits = 2),
r2 = format(summary(m)$r.squared, digits = 3)))
as.character(as.expression(eq))
}
p3 <- p2 + annotate("text", x=.5, y=10e+11, label=lm_eqn(data), hjust=0, size=6,
family="Times", face="italic", parse=TRUE)
p4 <- p3 + theme_bw()
p5 <- p4 + labs(title="Time vs Number of Check Constraints", x = "Factor of Increase", y="Time (Nanoseconds)")
p5 + geom_point()
