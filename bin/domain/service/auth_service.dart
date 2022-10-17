


import '../model/auth_model.dart';
import '../repository/auth_repository.dart';

class AuthService {
  late AuthRepository repository;

  AuthService(this.repository);

  signIn(email, password) {
    var data = AuthModel(email, password);
    return repository.signIn(data);
  }
}