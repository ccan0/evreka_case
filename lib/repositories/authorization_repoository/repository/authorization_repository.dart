import 'package:evreka_case/injections/firebase_authentication_controller/controller/firebase_authentication_controller.dart';
import 'package:evreka_case/injections/firebase_authentication_controller/type/firebase_authentication_controller_interface.dart';
import 'package:evreka_case/repositories/authorization_repoository/type/authorization_repository_interface.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthorizationRepository implements IAuthorizationRepository {
  @override
  IFirebaseAuthenticationController get firebaseAuthenticationController => FirebaseAuthenticationController();

  @override
  Future<UserCredential> signIn({required String email, required String password}) async{
    try {
      UserCredential userCredential = await firebaseAuthenticationController.signIn(email: email, password: password);

      return userCredential;
    } on Exception catch (_) {
      rethrow;
    }
  }
}