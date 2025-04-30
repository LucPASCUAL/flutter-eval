# Evaluation écrite

1. Dans le domaine du développement mobile, on distingue trois grandes familles de technologies. Citez-les.
    Application native / Application cross-platform / Progressive Web App (PWA)

2. Citez trois avantages et trois inconvénients de la solution Flutter.
     Avantages : Un seul code utilisé pour n'importe quelle platform
	       Compilation JIT et AOT
	       Moteur graphique fluide 60/120 fps (SKIA)

     Inconvénient : Un seul rendu graphique quelque soit la platform d'utilisation
		  Application plus volumineuse que les apps native
		  Langage Dart peu familier


3. Quelle est la différence entre une variable déclarée avec le mot-clé final et une variable déclarée avec le mot-clé const en Dart ?
    Les deux sont des variables fixé mais la valeur de const doit être connue au moment de la compilation tandit que celle de final au moment de l'éxecution 

4. A quoi sert le BuildContext passé en paramètre de la méthode build ?
    Il permet de connaitre la position du widget dans l'arbre et de pouvoir accéder à son environnement 

5. Quelle est la différence entre un Stateless Widget et un Stateful Widget ?
    Un Stateless Widget est un Widget dit "statique" son état ne changera pas une fois construit alors qu'un Statefull Widget est un Widget dont l'état peux changer

