import 'package:evreka_case/repositories/authorization_repoository/type/authorization_repository_interface.dart';

abstract class IAuthorizationService {
  abstract final IAuthorizationRepository authorizationRepository;

  Future<bool> signIn({required String email, required String password});
}