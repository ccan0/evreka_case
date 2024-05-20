import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evreka_case/injections/firebase_firestore_controller/type/firebase_firestore_controller_interface.dart';

class FirebaseFirestoreController implements IFirebaseFirestoreController {

  static final FirebaseFirestoreController _instance = FirebaseFirestoreController._internal();

  factory FirebaseFirestoreController() {
    return _instance;
  }

  FirebaseFirestoreController._internal();

  @override
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> get({required String collectionName}) async{
    try {
      QuerySnapshot<Map<String, dynamic>> response = await firebaseFirestore.collection(collectionName).get();

      return response;
    } on Exception catch (_) {
      rethrow;
    }
  }
}