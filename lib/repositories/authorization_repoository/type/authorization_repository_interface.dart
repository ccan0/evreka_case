import 'package:evreka_case/injections/firebase_authentication_controller/type/firebase_authentication_controller_interface.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthorizationRepository {
  abstract final IFirebaseAuthenticationController firebaseAuthenticationController;

  Future<UserCredential> signIn({required String email, required String password});
}