import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evreka_case/injections/firebase_firestore_controller/type/firebase_firestore_controller_interface.dart';

abstract class IContainerRepository {
  abstract IFirebaseFirestoreController firebaseFirestoreController;

  Future<QuerySnapshot<Map<String, dynamic>>> getContainers();
}