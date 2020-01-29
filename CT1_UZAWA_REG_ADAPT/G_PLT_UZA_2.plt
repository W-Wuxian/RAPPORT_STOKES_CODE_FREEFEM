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


#----PENSEZ A BIEN CHANGER LES NOMS DES FICHIERS
#----LES NOMS DES TITRES (set titles) ET LABEL par ex P2P1, P1bP1...
#----L'EMPEUREUR LE PLOTTEUR
#----PENSEZ A SUIVRE LES INSTRUCTIONS COMMENTER DECOMMENTER

m='LOG_CT1_UZAWA.txt'

#NE PAS DECOMENTER
#set terminal png
#set output 'CT1-UZAWA-Mean(L2-Relat)-(U-P)_(P2P1).png'

set key under box 3
set ylabel offset 1 'NDOF'
set ytics 2000

#set zlabel rotate by -90 offset -2 'MER U-P'
set zlabel rotate by -90 offset -2 'ER L2 U et P'

set xlabel offset -2 'temps cpu (s)'
#Pour UZAWA ON PEUT DIRECT FAIRE UN 4D PLOT
set title '4D Plot: NDOF-temps cpu Uzawa sur la ER U-P'

set label "P1bP1" at screen 0.35, 0.85 font "Arial,10"

set logscale z
set grid
set format "%G"

#splot m index 0 using 5:2:(($3+$4)/2) ps 3 pt 7 title'Prep solver: E-6', m index 1 using 5:2:(($3+$4)/2) ps 3 pt 11 title'E-12'


#splot m index 0 using 5:2:(($3+$4)/2) ps 3 pt 2 title'Inversion de A: CG (E-12)', m index 1 using 5:2:(($3+$4)/2) ps 3 pt 11 title'GMres E-12',\
# m index 2 using 5:2:(($3+$4)/2) ps 3 pt 4 title'UMFPACK'

splot m index 2 using 5:2:4 ps 3 pt 11 title'ER Pression', m index 2 using 5:2:3 ps 3 pt 5 title'ER Vitesse'
