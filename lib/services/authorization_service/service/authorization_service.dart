import 'package:evreka_case/repositories/authorization_repoository/repository/authorization_repository.dart';
import 'package:evreka_case/repositories/authorization_repoository/type/authorization_repository_interface.dart';
import 'package:evreka_case/services/authorization_service/type/authorization_service_interface.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthorizationService implements IAuthorizationService {
  @override
  IAuthorizationRepository get authorizationRepository => AuthorizationRepository();

  @override
  Future<bool> signIn({required String email, required String password}) async{
    try {
      UserCredential userCredential = await authorizationRepository.signIn(email: email, password: password);

      return userCredential.user?.email != null && (userCredential.user?.email?.isNotEmpty ?? false);
    } on Exception catch (_) {
      rethrow;
    }
  }
}