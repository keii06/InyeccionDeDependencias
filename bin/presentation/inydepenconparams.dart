

import '../data/auth_repository_impl.dart';
import '../domain/service/auth_service.dart';

void main(List<String> arguments) {
    late AuthService auth;
    
    var repository = AuthRepositoryImpl();
    auth = AuthService(repository);

    try {
      String email = "Keii0612";
      String password = "06121997";
      print(auth.signIn(email, password));
    } catch (e) {
      print(e);
    }
}
