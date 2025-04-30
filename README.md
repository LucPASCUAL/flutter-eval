# Evaluation écrite

1. Dans le domaine du développement mobile, on distingue trois grandes familles de technologies. Citez-les.  
    > Les applications natives, les applications cross-platform et les applications web progressives (PWA).

2. Citez trois avantages et trois inconvénients de la solution Flutter.
    > Le moteur graphique Skia (pas besoin de passer par les composants natifs + ecran fluide 60 /120 fps), flutter est full cross-platform (windows, linux, macos, ios, android, web), en plus l'experience de developpement est agréable grace au hot reload (JIT et AOT)

3. Quelle est la différence entre une variable déclarée avec le mot-clé final et une variable déclarée avec le mot-clé const en Dart ?
    > Une variable déclarée avec const doit etre conu à la compilation à l'instar de const qui peut donc recevoir une valeur d'une source externe (bdd, utilisateur etc...)

4. A quoi sert le BuildContext passé en paramètre de la méthode build ?
    > Cet objet permet de connaître la position du widget dans l’arbre, et d’accéder à son environnement

5. Quelle est la différence entre un Stateless Widget et un Stateful Widget ?
    > le Statfull peut etre rafraicchi grace au seState
