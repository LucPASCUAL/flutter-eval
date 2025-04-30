# Evaluation écrite

### 1. Dans le domaine du développement mobile, on distingue trois grandes familles de technologies. Citez-les.

Il existe trois grandes familles de technologies pour le développement mobile :
- Les applications **natives**, développées spécifiquement pour une plateforme (iOS ou Android) en utilisant les langages natifs de chaque plateforme.
- Les applications **hybrides**, qui combinent des éléments natifs et web, permettant de créer une seule application pour plusieurs plateformes.
- Les applications **web progressives (PWA)**, qui sont des applications web optimisées pour fonctionner sur mobile et peuvent être installées sur l'appareil de l'utilisateur.

### 2. Citez trois avantages et trois inconvénients de la solution Flutter.

**Avantages :**
- Développement multiplateforme, pas besoin de redévelopper 35 fois l'application
- Hot reload, qui permet de voir en temps réel nos modifications
- Moteur SKIA, pas besoin de se limiter à des composants natifs et possibilité de choisir un thème pré-défini (Cupertino, Material, etc.)

**Inconvénients :**
- Apprendre le Dart, qui est un langage peu utilisé
- Taille de l'application, qui peut être un peu lourde
- Support des features natives qui peuvent être complexes à mettre en place (biométrie, etc.)

### 3. Quelle est la différence entre une variable déclarée avec le mot-clé final et une variable déclarée avec le mot-clé const en Dart ?

Les 2 mots clés vont permettre de créer une variable immutable, mais il y a une différence :

`final` va créer la variable mais ne l'initilisera pas tout de suite. On peut le faire plus tard.\
`const` va demander la valeur dès son initialisation.

### 4. A quoi sert le BuildContext passé en paramètre de la méthode build ?

Le `BuildContext` est un objet qui représente le contexte dans lequel un widget est construit.\

### 5. Quelle est la différence entre un Stateless Widget et un Stateful Widget ?

Un widget Stateless ne contient pas de state, soit aucune valeur qui changera une fois rendu.\
A l'inverse un widget Stateful contient un state.

Un widget Stateless est donc forcément plus optimisé, ce qui fait qu'on ne doit pas créer que des widgets Stateful.