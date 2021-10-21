#usr/bin/env bash

source .liste.sh
rouge='\e[0;31m'
neutre='\e[0;m'
vert="\e[92m"
clear

echo "======================================================================"
printf "${rouge}"
echo "DEH" "" " 'SUS" | figlet -w 200 -f standard
echo "JEU DE L'INTRUS" | figlet -w 200 -f small
echo -e "${vert}by Psyon Tharyse Chrono Akinil${neutre}"
echo "======================================================================"
echo ""
echo "Plusieurs listes de mots vont apparaître, trouvez le mot suspect pour chacune des 5 listes !"
echo ""
declare -i score=0

function verif ()
{
echo $1
echo ""
read reponse
if [ "$reponse" = "$2" ]
then
	echo "Bien joué, c'est une bonne réponse !"
	echo ""
	score=$score+1
else
	echo "Dommage c'est une mauvaise réponse"
	echo ""
fi

return $score

}

verif $l1 chasselas
verif $l2 affable
verif $l3 chien
verif $l4 impaludation
verif $l5 renauder

echo -e "Votre score est :"${rouge} $score ${neutre} "Merci d'avoir joué !"
cat amogus.ascii | lolcat -a
exit 0


