import 'package:evreka_case/injections/firebase_authentication_controller/type/firebase_authentication_controller_interface.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthenticationController implements IFirebaseAuthenticationController {

  static final FirebaseAuthenticationController _instance = FirebaseAuthenticationController._internal();

  factory FirebaseAuthenticationController() {
    return _instance;
  }

  FirebaseAuthenticationController._internal();

  @override
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @override
  Future<UserCredential> signIn({required String email, required String password}) async{
    try {
      UserCredential userCredential = await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);

      return userCredential;
    } on Exception catch (_) {
      rethrow;
    }
  }

}