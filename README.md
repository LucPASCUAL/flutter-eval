# Evaluation écrite

1. Dans le domaine du développement mobile, on distingue trois grandes familles de technologies. Citez-les.
   les applications natives technologie pour une seule plateforme (Android, iOS, Windows, Linux…)
   les applications cross-plateforme peut etre utilisé sur android IOS WEB...
   Progressive app (PWA) 
2. Application web responsive
   • Fonctionnalités hors-ligne,
   notification…



2. Citez trois avantages et trois inconvénients de la solution Flutter.
avantage
Un seul code est utilisé quelque soit la plateforme de destination (Android, iOS, Windows, Linux…).
• Compilation JIT (Just In Time) et AOT (Ahead-Of-Time).
• Utilisation du moteur graphique Skia (fluidité 60/120 fps, pas besoin de pont avec les composants natifs)

inconvénient
Un seul rendu graphique quelque soit la plateforme de destination
Applications plus volumineuses que les apps natives (principalement en raison de l’intégration du moteur Skia dans le build). • Un langage peu familier (Dart).
Accès à certaines fonctionnalités natives complexe (capteur biométrique, gyroscope…).

3. Quelle est la différence entre une variable déclarée avec le mot-clé final et une variable déclarée avec le mot-clé const en Dart ?
   pour const la donnée que contient la variable est prédéfini pendant la compilation alors que final elle n'est pas encore défini et sera défini après la compilation



4. A quoi sert le BuildContext passé en paramètre de la méthode build ?
   un buildcontext permet de connaitre la position du widget dans l’arbre et d’accéder à son environnement comme les les widgets au-dessus de lui

5. Quelle est la différence entre un Stateless Widget et un Stateful Widget ?
   un stateless widget est un widget qui n’aura pas à être rafrachi 
6. il sera statique alors qu’un widget statefull pourra être rafraîchi grâce aux states et son état va changer

