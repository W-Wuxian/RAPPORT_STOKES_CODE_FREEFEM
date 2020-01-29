m='LOG_CT1_PENA_UMFPACK_ADAPT.txt'
#----PENSEZ A BIEN CHANGER LES NOMS DES FICHIERS
#----LES NOMS DES TITRES (set titles) ET LABEL
#----PENSEZ A SUIVRE LES INSTRUCTIONS COMMENTER DECOMMENTER

#POUR LA SORTIE PNG JUSTE MODIFIER LES TITRES, LABEL(SUBTITLE),FICHIERS DE SORTIE output
#SUIVRE LES INSTRUCTIONS COMMENTER DECOMMENTER

#NE PAS DECOMENTER
set terminal png
#MODIFIER LE NOM DE L'OUTPUT SI BESOIN
#DECOMMENTER POUR L'ERREUR RELATIVE ET COMMENTER SI TEMPS CPU
#set output 'CT1-PENA-UMFPACK-ADAPTMESH-Mean(L2-Relat)-(U-P)_(P1b_P1).png'
#DECOMMENTER POUR LE TEMPS CPU ET COMMENTER SI ERREUR RELATIVE
set output 'TEMPS_CPU_CT1-PENA-UMFPACK-ADAPTMESH-Mean(L2-Relat)-(U-P)_(P1b_P1).png'

set key under box 3
#DECOMMENTER POUR L'ERREUR RELATIVE ET COMMENTER SI TEMPS CPU
#set ylabel offset 1 'Moyenne(Err Relative L2 Vitesse-Pression)'
#DECOMMENTER POUR LE TEMPS CPU ET COMMENTER SI ERREUR RELATIVE
set ylabel offset 1 'TEMPS CPU UMFPACK'

set xlabel offset -2 'NDOF'
set xtics 200 rotate by -90 offset -1

#set zlabel rotate by -90 offset -2 'Moyenne(Err Relative L2 Vitesse-Pression)'

set title '3D Plot: Influence NDOF-Perturbation P1bP1 '
#DECOMMENTER POUR L'ERREUR RELATIVE ET COMMENTER SI TEMPS CPU
#set label "UMFPACK-ADAPTMESH sur la convergence" at screen 0.35, 0.9 font "Arial,10"
#DECOMMENTER POUR LE TEMPS CPU ET COMMENTER SI ERREUR RELATIVE
set label "UMFPACK-ADAPTMESH sur TEMPS CPU" at screen 0.35, 0.9 font "Arial,10"

set logscale y
set grid
a0='Perturbation: 10'
a1='1'
a2='E-1'#'0.1'
a3='E-3';#'0.001'
a4='1,5E-5'#'0.000015'
a5='E-5'#'0.00001'
a6='1,5E-6'#'0.0000015'
a7='E-6'#'0.000001'
a8='E-7'#'0.0000001'

#DECOMMENTER POUR L'ERREUR RELATIVE ET COMMENTER SI TEMPS CPU
#plot m index 0 using 2:(($3+$4)/2) ps 3 pt 1 title a0, m index 1 using 2:(($3+$4)/2) ps 2 pt 2 title a1, m index 2 using 2:(($3+$4)/2) ps 2 pt 3 title a2,\
#m index 3 using 2:(($3+$4)/2) ps 2 pt 4 title a3, m index 4 using 2:(($3+$4)/2) ps 2 pt 5 title a4, m index 5 using 2:(($3+$4)/2) ps 2 pt 6 title a5,\
#m index 6 using 2:(($3+$4)/2) ps 2 pt 7 title a6, m index 7 using 2:(($3+$4)/2) ps 2 pt 8 title a7, m index 8 using 2:(($3+$4)/2) ps 2 pt 9 title a8
#DECOMMENTER POUR LE TEMPS CPU ET COMMENTER SI ERREUR RELATIVE
plot m index 0 using 2:5 ps 3 pt 1 title a0, m index 1 using 2:5 ps 2 pt 2 title a1, m index 2 using 2:5 ps 2 pt 3 title a2,\
m index 3 using 2:5 ps 2 pt 4 title a3, m index 4 using 2:5 ps 2 pt 5 title a4, m index 5 using 2:5 ps 2 pt 6 title a5,\
m index 6 using 2:5 ps 2 pt 7 title a6, m index 7 using 2:5 ps 2 pt 8 title a7, m index 8 using 2:5 ps 2 pt 9 title a8


#NE PAS DECOMMENTER:
#replot m index 1 using 2:(($3+$4)/2) ps 2 pt 2 title a1
#replot m index 2 using 2:(($3+$4)/2) ps 2 pt 3 title a2
#replot m index 3 using 2:(($3+$4)/2) ps 2 pt 4 title a3
#replot m index 4 using 2:(($3+$4)/2) ps 2 pt 5 title a4
#replot m index 5 using 2:(($3+$4)/2) ps 2 pt 6 title a5
#replot m index 6 using 2:(($3+$4)/2) ps 2 pt 7 title a6
#replot m index 7 using 2:(($3+$4)/2) ps 2 pt 8 title a7
#replot m index 8 using 2:(($3+$4)/2) ps 2 pt 9 title a8
