###Exercice 1

UrgenceHouse = read.table("UrgencesHouse.txt")
UrgenceHouse

UrgenceHouse2 = read.csv("UrgencesHouse.txt")
UrgenceHouse2

UrgenceHouse3 = read.csv2("UrgencesHouse.txt")
UrgenceHouse3

###Exercice 2
#1. 
YWC = read.csv(file = "Presidential-elections.csv", header = TRUE, sep = ";", dec = ",")
YWC

#2.
YWC[1:5,4 ]
summary(YWC)

#3.


###4.
trie = which(YWC$Scandal != 0)
YWC$Scandal[trie] = 1

###5
YWC$Scandal[YWC$Scandal==0]= "non"
YWC$Scandal[YWC$Scandal==1]= "oui"
YWC

###6.  Créer un facteur classRJ à 5 niveaux
 
factor(cut(x=YWC$RatingJune, breaks = seq(from=20, to=80, by=10)))

###7
classRJ =factor(cut(x=YWC$RatingJune, breaks = c(20, seq(from=40, to=80, by=10))))
YWC$classRJ = classRJ
YWC


delkibas = paste(YWC$Year, c("-01-01"), sep="")
delkibas.date = as.Date(delkibas, format = "%Y")
class(delkibas.date)
Years = year(delkibas.date)
class(Years)











