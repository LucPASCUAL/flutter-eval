# Evaluation écrite

1. Dans le domaine du développement mobile, on distingue trois grandes familles de technologies. Citez-les.

2. Citez trois avantages et trois inconvénients de la solution Flutter.

3. Quelle est la différence entre une variable déclarée avec le mot-clé final et une variable déclarée avec le mot-clé const en Dart ?

4. A quoi sert le BuildContext passé en paramètre de la méthode build ?

5. Quelle est la différence entre un Stateless Widget et un Stateful Widget ?


Réponse : 
1) Applications natives / Applications cross-platform / Applications web progressives 

2) 	Avantages : Un seul code pour toutes les plateformes	/ Rendu graphique unifié avec Skia / Performances élevées 

	Inconvénients : Taille des applications plus volumineuse / Accès aux fonctionnalités natives parfois complexe / Utilisation du langage Dar (peu connu)

3) 	final : valeur immuable, assignée une seule fois à l’exécution.

	const : valeur immuable connue à la compilation (plus stricte que final).

4) 	Permet de connaître la position du widget dans l’arbre, et d’accéder à son environnement	
	
5) 	StatelessWidget : L’état ne change pas une fois qu’il a été construit. / Les Informations ne peuvent pas être modifies

	StateFulWidget : Widget dont l’état peut changer (ex : Un chronomètre qu'on incrémente)