
import 'package:innovative_farming/data/rest_data.dart';
import 'package:innovative_farming/models/user.dart';

abstract class LoginContract{
  void onLoginSuccess(User user);
  void onLoginError(String error);

}

class LoginPagePresenter{
  LoginPagePresenter _view;
  RestData api = new RestData();
  LoginPagePresenter(
      this._view
      );


  doLogin(String username, String password){
    api.login(username, password).then((User ) =>_view )
  }

}


