import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evreka_case/injections/firebase_firestore_controller/controller/firebase_firestore_controller.dart';
import 'package:evreka_case/injections/firebase_firestore_controller/type/firebase_firestore_controller_interface.dart';
import 'package:evreka_case/repositories/container_repository/type/container_repository_interface.dart';
import 'package:evreka_case/utilities/constants/url_constants/url_constants.dart';

class ContainerRepository implements IContainerRepository {
  @override
  IFirebaseFirestoreController firebaseFirestoreController = FirebaseFirestoreController();

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getContainers() async{
    try {
      QuerySnapshot<Map<String, dynamic>> response = await firebaseFirestoreController.get(collectionName: UrlConstants().containers);

      return response;
    } on Exception catch (_) {
      rethrow;
    }
  }
  
}