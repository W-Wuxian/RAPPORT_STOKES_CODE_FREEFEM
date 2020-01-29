#----PENSEZ A BIEN CHANGER LES NOMS DES FICHIERS
#----LES NOMS DES TITRES (set titles) ET LABEL
#----PENSEZ A SUIVRE LES INSTRUCTIONS COMMENTER DECOMMENTER

#----POUR LES OUTPUT png DES FICHIERS G_PLT*.plt, avec * := rien, ou bien _ADAPT ou un autre tag
#----FAIRE DANS UN TERMINAL:
#-DANS UN TERMINAL---1/ gnuplot
#-DANS UN TERMINAL---2/load 'G_PLT*.plt'
#----3/rescale à la main(à la souris) le plot pour set up la meilleur vue et agrandir le plot
#--DANS UN TERMINAL--4/set terminal png size 800,600
#--DANS UN TERMINAL--5/set output 'le nom de l'output.png'
#--DANS UN TERMINAL--6/load 'G_PLT*.plt'

m='LOG_CT1_PENA_GMRES.txt'

#NE PAS DECOMENTER
#set terminal png
#set output 'CT1-PENA-GMres-Mean(L2-Relat)-(U-P)_(P1b_P1).png'

set key under
set ylabel offset 1 'NDOF'

#DECOMMENTER POUR L'ERREUR RELATIVE ET COMMENTER SI TEMPS CPU
set zlabel rotate by -90 offset -2 'Moyenne(Err Relative L2 Vitesse-Pression)'
#DECOMMENTER POUR LE TEMPS CPU ET COMMENTER SI ERREUR RELATIVE
#set zlabel rotate by -90 offset -2 'TEMPS CPU SOLVER'

set xlabel offset -2 'Perturbation'
#DECOMMENTER SI ERR RELATIVE COMMENTER SI TEMPS CPU
set title '4D Plot: Influence NDOF-Perturbation-Precision de GMres sur la convergence'
#DECOMMENTER SI TEMPS CPU COMMENTER SI ERR RELATIVE
#set title '4D Plot: Influence NDOF-Perturbation-Precision de GMres sur temps cpu'

set label "P2P1, Tol solver = E-12" at screen 0.35, 0.85 font "Arial,10"
set logscale z
set grid
set format '%G'

#DECOMMENTER POUR L'ERREUR RELATIVE
splot m index 0 using 2:3:(($5+$6)/2) ps 3 pt 5 title'Tol solver: E-6', m index 1 using 2:3:(($5+$6)/2) ps 3 pt 2 title'E-8',\
m index 2 using 2:3:(($5+$6)/2) ps 3 pt 6 title'E-10', m index 3 using 2:3:(($5+$6)/2) ps 3 pt 8 title'E-12'

#P U
#splot m index 0 using 2:3:5 ps 3 pt 5 title'ER Vitesse', m index 0 using 2:3:6 ps 3 pt 7 title'ER Pression',\


#DECOMMENTER POUR LE TEMPS CPU
#splot m index 0 using 2:3:7 ps 3 pt 4 title'Tol solver: E-6', m index 1 using 2:3:7 ps 3 pt 2 title'E-8',\
#m index 2 using 2:3:7 ps 3 pt 6 title'E-10', m index 3 using 2:3:7 ps 3 pt 8 title'E-12'


#NE PAS DECOMMNETER ET NE PAS TENIR COMPTE
#splot m index 0 using 2:3:(($5+$6)/2) ps 3 pt 4 title'Tol solver: E-6', m index 1 using 2:3:(($5+$6)/2) ps 3 pt 2 title'E-8', m index 2 using 2:3:(($5+$6)/2) ps 3 pt 6 title'E-10', m index 3 using 2:3:(($5+$6)/2) ps 3 pt 8 title'E-12'



#NE PAS DECOMMNETER ET NE PAS TENIR COMPTE
#replot for[i=1:1] m index i using 2:3:(($5+$6)/2) ps 3 pt 2 title'E-8'
#replot for[i=2:2] m index i using 2:3:(($5+$6)/2) ps 3 pt 6 title'E-10'
#replot for[i=3:3] m index i using 2:3:(($5+$6)/2) ps 3 pt 8 title'E-12'

#replot for[i=1:3] m index i using 2:3:(($5+$6)/2) ps 3 pt (6+i) title'Merr'

#splot m index 0 using 2:3:(($5+$6)/2) ps 3 pt 1 title'Merr 1'
#replot for[i=2:4] m using 2:3:(($5+$6)/2):log(1) ps 3 pt i  title'Merr'
