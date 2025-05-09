class FirestoreUtil {
  static buildTodosCollectionPath(String targetedCollection) {
    return 'users/$targetedCollection/todos';
  }
}
