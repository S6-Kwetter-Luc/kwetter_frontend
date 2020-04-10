import 'package:mobx/mobx.dart';

import 'login_repository.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  var repo = login_repository();

  @observable
  int value = 0;

  @observable
  var email = "aaaaaaaaa";

  @observable
  var password = "";

  @action
  void increment() {
    value++;
  }
  @action
  setEmail(String _email) {
    email = _email;
  }
  @action
  setPassword(String _password) {
    password = _password;
  }

  @action
  attemptLogin(String _email, String _password) {
    repo.attemptLogin(email, password);
  }

}
