Flutter eval

1. Dans le domaine du développement mobile, on distingue trois grandes familles de technologies. Citez-les.
   • Développement natif
   • Langages et SDK propres à chaque plateforme (Swift pour iOS, Kotlin/Java pour Android).
   • Développement cross-platform (multiplateforme)
   • Un seul code pour plusieurs plateformes (Flutter, React Native, Xamarin...).
   • Applications web mobiles (Web apps / PWA)
   • Sites web optimisés pour le mobile, parfois installables comme apps.

2. Citez trois avantages et trois inconvénients de la solution Flutter.
   Avantages :
   • Un seul code base pour Android, iOS, Web, Desktop.
   • UI personnalisable et flexible grâce au moteur de rendu de Flutter.
   • Hot reload permet un dev rapide et fluide.
   Inconvénients :
   • Poids des apps parfois plus élevé que les apps natives.
   • Pas encore très optimisé pour certaines fonctionnalités natives avancées.
   • Communauté plus jeune, donc moins de ressources, comparé à React Native ou natif.

3. Quelle est la différence entre une variable déclarée avec le mot-clé final et une variable déclarée avec le mot-clé const en Dart ?

Final : Une seule affectation possible, mais calculée à l’exécution.
Const : valeur immuable, connue à la compilation. Il est plus strict. A mettre si on le connait à l’avance.

4. A quoi sert le BuildContext passé en paramètre de la méthode build ?

Il sert à accéder à l’arbre de widgets (Theme.of(context) ou Navigator.of(context)), à savoir où dans la hiérarchie on est, ou encore à permettre au widget de s'interfacer avec le reste de l'app.
Sans lui, on ne peut pas accéder aux infos.

5. Quelle est la différence entre un Stateless Widget et un Stateful Widget ?

Un StatelessWidget est un widget dont le contenu ne change jamais. Il est immuable et afficher des données fixes ou dérivées uniquement des paramètres. Il est généralement utilisé pour construire des interfaces statiques comme des boutons, du texte ou des icônes.

Un StatefulWidget est un widget dont l’état peut évoluer au cours du temps. Il est couplé à un objet State qui gère les changements dynamiques (ex : interactions utilisateur, chargement de données, animation). Il est utilisé pour les composants nécessitant une mise à jour de l’interface suite à des événements ou des modifications de données.
