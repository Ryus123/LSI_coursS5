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

###8. Transformer la variable Year en date. Vérifier.
YWC$Year = as.Date(as.character(YWC$Year), format = "%Y")
class(YWC$Year)

###9. Exporter le data frame ywc ainsi transformé sous la forme d’un fichier texte newywc.txt, avec un point comme décimale et une tabulation comme séparateur
write.table(YWC, "newywc.txt",  fileEncoding = "UTF-8")

###10.  Retrouver les années des élections présidentielles pour lesquelles la variable Vote est minimale, puis maximale. Y a-t-il eu un scandale lors du mandat écoulé ces années là ?
trie_elec = c(which.min(YWC$Vote), which.max(YWC$Vote))
trie_elec
YWC$Year[trie_elec]
YWC$Scandal[trie_elec]

###11. Calculer la médiane empirique de Vote pour chaque niveau du facteur Scandal
tapply(YWC$Vote, YWC$Scandal, median)

###12. 
tapply(YWC$Vote, list(YWC$Scandal, YWC$clas), median)

###13.
tapply(YWC$Vote, YWC$RatingJune>50, median)

###14.
df_splite = split(YWC,YWC$Scandal)
Scandal = df_splite$oui
noScandal = df_splite$non

#####Exercice 3
###1.
media1 = read.table("SocioDemo.csv", header = TRUE, sep=";", dec=",")

###2.
media2= read_excel("SocioDemo.xlsx" )

###3.
media1[1:5,]
media2[1:5,]
summary(media1)
summary(media2)
str(media1)

###4.
audience = read_excel("Audience.xlsx" )

###5.
audmedia = merge(audience, media2)

