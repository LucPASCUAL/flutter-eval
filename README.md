# Evaluation écrite

1. Dans le domaine du développement mobile, on distingue trois grandes familles de technologies. Citez-les.

Il y a les applications natives, applications hybrides et applications cross-platform


2. Citez trois avantages et trois inconvénients de la solution Flutter.

Avantages :
c'est une base de code unique pour Android, iOS, Web et Desktop.
Les performances sont proches du natif, grâce au moteur Dart.
L'interface utilisateur est personnalisable avec des widgets riches et flexibles.

Inconvénients :
Le poids des applications générées est souvent plus élevé.
Flutter est encore relativement jeune, donc certaines bibliothèques sont moins matures.
L'intégration avec les services natifs peut être complexe et nécessite l’utilisation de canaux de plateforme.


3. Quelle est la différence entre une variable déclarée avec le mot-clé final et une variable déclarée avec le mot-clé const en Dart ?

La différence c'est qu'une variable final peut être assignée une seule fois, mais sa valeur peut être connue à l’exécution, alors qu'une variable const est une constante connue à la compilation, elle est donc immuable et optimisée dès la compilation.


4. A quoi sert le BuildContext passé en paramètre de la méthode build ?

Le BuildContext est un objet qui fournit un lien vers l’arbre de widgets, il permet d'accéder à l’environnement, aux widgets parents, aux méthodes comme Navigator.of(context) ou Theme.of(context).


5. Quelle est la différence entre un Stateless Widget et un Stateful Widget ?

La différence est qu'un StatelessWidget est un widget immuable : son contenu ne change pas après sa création, alors qu'un StatefulWidget peut changer dynamiquement grâce à un état interne et la méthode setState().