

import '../domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {

  @override
  String signIn(data){

    if (data.email == "Keii0612") {
      if (data.password == "06121997") {
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