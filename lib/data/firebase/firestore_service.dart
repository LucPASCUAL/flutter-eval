import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo/data/exceptions/firestore_exception.dart';
import 'package:todo/domain/models/task.dart';

class FirestoreService {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static CollectionReference<Task> _getCollection(String path) {
    return _firestore.collection(path).withConverter<Task>(
          fromFirestore: (snapshot, _) {
            final data = snapshot.data();
            if (data == null) throw SnapshotNullPointerException();
            return Task.fromJson(snapshot.id, data);
          },
          toFirestore: (task, _) => task.toJson(),
        );
  }

  static Stream<List<Task>> streamAllDocuments(String collectionPath) {
    //Stream sert à écouter les changements dans Firestore en temps réel
    try {
      return _getCollection(collectionPath).snapshots().map((querySnapshot) {
        return querySnapshot.docs.map((doc) => doc.data()).toList();
      });
    } catch (e) {
      return Stream.error(e);
    }
  }

  //CREATE
  static Future<String> addDocument(String collectionPath, Task task) async {
    try {
      final newDoc = await _getCollection(collectionPath).add(task);
      return newDoc.id;
    } catch (e) {
      rethrow;
    }
  }

  //READ - get all documents
  static Future<List<Task>> getAllDocuments(String collectionPath) async {
    try {
      final querySnapshot = await _getCollection(collectionPath).get();
      return querySnapshot.docs
          .map(
            (doc) => doc.data(),
          )
          .toList();
    } catch (e) {
      rethrow; //relancer une exception déjà capturée sans perdre la trace de sa pile d'origine
    }
  }

  //READ - get document by ID
  static Future<Task?> getDocumentById(
      String collectionPath, String docId) async {
    try {
      final docSnapshot = await _getCollection(collectionPath).doc(docId).get();
      if (!docSnapshot.exists) throw DocumentDoesNotExist();
      return docSnapshot.data();
    } catch (e) {
      rethrow;
    }
  }

  //UPDATE
  static Future<void> updateDocument(
      String collectionPath, String docId, Task task) async {
    try {
      await _getCollection(collectionPath).doc(docId).set(task);
    } catch (e) {
      rethrow;
    }
  }

  //DELETE
  static Future<void> deleteDocument(
      String collectionPath, String docId) async {
    try {
      await _getCollection(collectionPath).doc(docId).delete();
    } catch (e) {
      rethrow;
    }
  }
}
