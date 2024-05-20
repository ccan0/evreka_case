import 'package:firebase_auth/firebase_auth.dart';

abstract class IFirebaseAuthenticationController {
  abstract final FirebaseAuth firebaseAuth;

  Future<UserCredential> signIn({required String email, required String password});
}