Poids = vect_y
NbreExamens = vect_z

###18. 
urgence1=data.frame(Sexe,service,data.entree, Poids, NbreExamens,row.names=Patients)
urgence1

###19.
urgence1[1:10,]
urgence1$Poids[1:10]
trie = which(urgence1$Poids>80 & urgence1$Poids<100)
Patients[trie]
trie2=which(urgence1$service==2 | urgence1$service==3)
Patients[trie2]
urgence1
trie3 = which(trie & urgence1$NbreExamens>7)
Patients[trie3]

###20.
trie.na=which(is.na(urgence1$service))
p_SansNa = Patients[-c(trie.na)]
urgence1=urgence1[p_SansNa,]

###21.
df_splite = split(urgence1,urgence1$Sexe)
Femme = df_splite$F
Homme = df_splite$H

###22.  Calculer la moyenne du nombre d’examens pour chaque niveau du facteur Service, pour les femmes puis pourles hommes
MoyF_vis_serv = NULL
MoyH_vis_serv = NULL
for (i in levels(service)){
  MoyF_vis_serv[paste(c("service"), i , sep="")] = mean(Femme[Femme$service==strtoi(i), "NbreExamens"])
}
for (i in levels(service)){
  MoyH_vis_serv[paste(c("service"), i , sep="")] = mean(Homme[Homme$service==strtoi(i), "NbreExamens"])
}

MoyF_vis_serv
MoyH_vis_serv

###23. Créer un data.frame Urgences2 
Medecin = c("Cameron", "Chase", "Foreman", "Masters", "Taub", "Numéro13")
service2 = seq(6)
Urgence2 = data.frame(service2, Medecin)
Urgence2

Urgence = merge(x =urgence1, y=Urgence2, by.x = "service", by.y = "service2", fil)
Urgence

#Sauvegarde
write.table(Urgence, "UrgencesHouse.txt", fileEncoding = "UTF-8")



