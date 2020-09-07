import 'package:flutter/material.dart';
import 'package:innovative_farming/models/user.dart';
import 'package:innovative_farming/pages/login/login.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> implements LoginPageContract {

  BuildContext _ctx;
  bool _isLoading;
  final formKey = new GlobalKey<FormState>();
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  final _username,_password;

  LoginPagePresenter _presenter;


  _LoginPageState(){
    _presenter = new LoginPagePresenter(this);
  }


  @override
  Widget build(BuildContext context) {
    _ctx = context;
    var loginBBtn = new RaisedButton(
      onPressed: _submit,
      child: new Text("Login"),
    );
  }

  @override
  void onLoginError(String error) {
    // TODO: implement onLoginError
  }

  @override
  void onLoginSuccess(User user) {
    // TODO: implement onLoginSuccess
  }




}
