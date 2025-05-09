abstract class FirestoreException {}

class SnapshotNullPointerException extends FirestoreException
    implements Exception {
  @override
  String toString() =>
      "Nous n'avons trouvé aucunes données, la collection ou le document que vous recherchez n'existe pas ou a été supprimé.";
}

class DocumentDoesNotExist extends FirestoreException implements Exception {
  @override
  String toString() =>
      "Le document n'existe pas dans la base de données Firestore !";
}
