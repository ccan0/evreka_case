import 'package:cloud_firestore/cloud_firestore.dart';

abstract class IFirebaseFirestoreController {
  abstract final FirebaseFirestore firebaseFirestore;

  Future<QuerySnapshot<Map<String, dynamic>>> get({required String collectionName});
}