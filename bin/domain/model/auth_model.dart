
class AuthModel {
  late final String _email;
  late final String _password;

  AuthModel(this._email, this._password){
    validate();
  }

  get email{ return  _email; }  
  get password{ return  _password; }

  validate(){
    validateEmail(_email);
    validatePassword(_password);
  }

  validateEmail(field){
    validateStringFormat(field);
    validateEmptyField(field);
  }

  validatePassword(field){
    validateStringFormat(field);
    validateEmptyField(field);
  }

  validateStringFormat(field){
    if (field.runtimeType != String) {
      throw "El campo no es de tipo string";
    }
  }

  validateEmptyField(field){
    if (field == "") {
      throw "El campo se encuentra vacío";
    }
  }

}