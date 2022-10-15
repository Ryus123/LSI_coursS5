###Exercice
###1. Créer de plusieurs facons différentes le vecteur (1,2,3,4,5,6)
x1 <- c(1,2,3,4,5,6)
x1
x2 = seq(6)
x2
x3 = sequence(6)
x3
x4 <- 1:6
x4
###2. Créer le vecteur x egale à (1,1,2,2,2,3,3,3,3,4,4,4,4,4)
x5 = c(1,1,2,2,2,3,3,3,3,4,4,4,4,4)
###3. Extraire les 1er, 3e, 6e et 10e éléments de x5, puis extraire tous les éléments de x sauf les précédents
y1 <- x5[c(1,3,6,10)]
y1
y2 <- x5[-c(1,3,6,10)]
y2
###4. Extraire les éléments d'indices pairs de x
long_x5 = 1:length(x5)
long_x5
y3 = x5[long_x5%%2==0]
y3
###5. Créer un tableau contenant les effectifs de chaque valeur dans x5
tab1 = table(x5)
tab1
###6. Créer vecteur y de 40 réels tirés au hasard entre 45 et 100.
vect_y = round(runif(n=40, min = 45, max = 100), 1)
vect_y
###7. Extraire les éléments de y
#Compris entre 50 et 70
l_ind1 = which(vect_y>50 & vect_y<70)
l_ind1
vect_y1 = vect_y[l_ind1]
vect_y1
#Compris entre 50 et 60 OU entre 70 et 80
l_ind2= which(vect_y>50 & vect_y<60 | vect_y>70 & vect_y<80)
vect_y2 = vect_y[l_ind2]
vect_y2
#Egaux à 50, 60 ou 70
l_ind3= which(vect_y==60 | vect_y==50| vect_y==70)
vect_y3 = vect_y[l_ind3]
vect_y3
#Différent de 50, 60 et 70
l_ind4= which(vect_y!=60 & vect_y!=50 & vect_y!=70)
vect_y4 = vect_y[l_ind4]
vect_y4
###8. Créer un vecteur z de 40 entiers tirés au hasard avec remise entre 1 et 10
vect_z = round(runif(n=40, min = 1, max = 10), 0)
vect_z
###9. Sauvegarder vect_y et vect_z dans "ObjetsFiche2.RData" 
###10. Créer un vecteur Patients composé des ch (Patient1, Patient2, ..., Patient40)
Patients = paste(c("Patient"), 1:40, sep="")
Patients
###11.
A = matrix(vect_z[1:10], ncol=5, nrow=2, byrow=FALSE)
A
#vect_z
B = matrix(vect_z[11:20], ncol=2, nrow=5, byrow=TRUE)
B
###12.Exécuter >A*t(B) et commenter. Calculer le produit matriciel AB de A par B. Calculer le déterminant de la
#matrice AB, ainsi que son inverse si AB est inversible. Extraire la diagonale de AB, la première ligne de AB, puis les
#éléments supérieurs à 100 de AB.

#A*t(B) 
AB=A%*%B
AB
#det(AB)
#ABInv= solve(AB)
diagAB = diag(AB)
l1_AB = AB[1,]
supCentAB = AB[AB >100]
supCentAB
###13. Vecteur Sexe
Sexe = factor(sample(x = c("F","H"), size = 40, replace = TRUE), labels = c("F","H"))
Sexe
###14. 
service = factor(sample(x = seq(5), size = 40, replace = TRUE), levels = 1:6)
service[5] = NA
service[18] = NA
service
###15. vecteur avec 40 dates prise a hasard
seq1=seq(as.Date("2015-09-01"), as.Date("2015-09-30"), by = "day")
data.entree=sample(seq1, size=40, replace=TRUE)
data.entree
###16. Sauvegarde
save(vect_z,vect_y, file= "ObjetsFiche2.RData")






