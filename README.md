# Evaluation écrite

1. Dans le domaine du développement mobile, on distingue trois grandes familles de technologies. Citez-les.

- Applications natives : développées avec les langages spécifiques à chaque plateforme (Java/Kotlin pour Android, Swift/Objective-C pour iOS).

- Applications cross-platform : un seul code pour plusieurs plateformes, avec des technologies comme Flutter, React Native, Xamarin.

- Applications web progressives (PWA) : applications web optimisées pour mobile, avec des fonctionnalités comme le mode hors-ligne et les notifications.

2. Citez trois avantages et trois inconvénients de la solution Flutter.

Avantages :
- Un seul code pour toutes les plateformes (Android, iOS, desktop, web…).

- Rendu graphique unique grâce au moteur Skia (60/120 fps).

- Riche bibliothèque de widgets et outils intégrés (SDK, DevTools…).

Inconvénients :
- Taille des applications plus importante que les apps natives.

- Langage Dart peu familier pour de nombreux développeurs.

- Accès complexe à certaines fonctionnalités natives (ex. capteur biométrique).

3. Quelle est la différence entre une variable déclarée avec le mot-clé final et une variable déclarée avec le mot-clé const en Dart ?

- final : la variable est immutable (ne peut pas être réassignée) mais sa valeur peut être déterminée à l’exécution.

- const : la variable est aussi immutable, mais sa valeur doit être connue à la compilation, donc plus stricte que final.

4. A quoi sert le BuildContext passé en paramètre de la méthode build ?

- Le BuildContext permet de connaître la position du widget dans l’arbre des widgets.

- Il donne accès à l’environnement du widget : ancêtres, thèmes, taille de l’écran, navigation, messages (Snackbar via ScaffoldMessenger),


5. Quelle est la différence entre un Stateless Widget et un Stateful Widget ?

- StatelessWidget : widget immuable dont l'état ne change pas une fois construit.

- StatefulWidget : widget avec un état mutable, pouvant être modifié et déclencher une reconstruction de l’interface via setState().