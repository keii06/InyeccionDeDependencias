

import '../domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {

  @override
  String signIn(data){

    if (data.email == "email") {
      if (data.password == "password") {
        return "Inicio correcto";
      } else {
        return "Contraseña incorrecta";
      }
    }
    else{
      return "Email incorrecto";
    }

  }

}
