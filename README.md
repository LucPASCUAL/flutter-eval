# Evaluation écrite

1. Dans le domaine du développement mobile, on distingue trois grandes familles de technologies. Citez-les.

Développement natif
Développement hybride
Développement cross-platform


2. Citez trois avantages et trois inconvénients de la solution Flutter.

Taille des applications plus importante que les applications natives
Accès limité à certaines fonctionnalités natives spécifiques ou nécessité de plugins
Courbe d'apprentissage pour le langage Dart si on ne le connaît pas déjà

3. Quelle est la différence entre une variable déclarée avec le mot-clé final et une variable déclarée avec le mot-clé const en Dart ?

final: La variable doit être initialisée une seule fois et ne peut pas être modifiée par la suite. Sa valeur peut être déterminée à l'exécution.

const: La variable est une constante dont la valeur doit être connue à la compilation. Elle ne peut pas dépendre de valeurs calculées à l'exécution.

4. A quoi sert le BuildContext passé en paramètre de la méthode build ?

Le BuildContext passé en paramètre de la méthode buil.
Il représente l'emplacement d'un widget dans l'arborescence des widgets
Il permet d'accéder aux widgets parents et à leurs données
Il est utilisé pour obtenir des références aux thèmes, aux médias queries, et à d'autres ressources

5. Quelle est la différence entre un Stateless Widget et un Stateful Widget ?

Stateless Widget: Widget immuable dont l'interface utilisateur ne change pas au cours du temps. 

Stateful Widget: Widget qui peut changer son apparence en réponse aux événements utilisateur ou lorsque des données sont mises à jour. Il maintient un état interne qui peut être modifié pendant la durée de vie du widget via la méthode setState().
