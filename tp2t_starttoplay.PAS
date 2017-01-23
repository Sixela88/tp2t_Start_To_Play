// Algorithme : START TO PLAY
// BUT : Compter le nombre de personnes allant à l'événément et affichant lorsque la salle est pleine.
// ENTREES : nb correspondant à l'entrée ou à la sortie d'une personne
// SORTIES : Afficher lorsque la salle est pleine.

{CONST 
	Max<-250

VAR
	nb:ENTIER
	salle:ENTIER

DEBUT
	salle<-0
	ECRIRE("START TO PLAY - EVENT")
	REPETER
		REPETER
			ECRIRE("Entrez un nombre positif pour les entrées et un nombre négatif pour les sorties de l'evenement")
			LIRE(nb)
			salle<-salle+nb
			SI salle>Max ALORS
				salle<-Max
		JUSQU'A salle>=Max

		ECRIRE("Nombre maximum atteint")
		ECRIRE("Entrez 0 si vous voulez sortir du programme ou entree pour continuer")
		LIRE(nb)
		SI nb>0
			ECRIRE("Impossible")
	JUSQU'A nb=0
FIN}

Program start_to_play;

uses crt;

CONST
	Max=250;

VAR
	nb:integer;
	salle:integer;

BEGIN
	clrscr;
	salle:=0;
	writeln('START TO PLAY - EVENT');
	REPEAT
		BEGIN
			REPEAT
				BEGIN
					writeln('Entrez un nombre positif pour les entrées et un nombre négatif pour les sorties de l''evenement');
					readln(nb);
					salle:=salle+nb;
					IF salle>Max THEN
						salle:=Max;
				END;
			UNTIL salle>=Max;

			writeln('Nombre maximum atteint');
			writeln('Entrez 0 si vous voulez sortir du programme ou entree pour continuer');
			readln(nb);
			IF nb>0 THEN
				writeln('Impossible');
		END;
	UNTIL nb=0;
	readln;
END.
