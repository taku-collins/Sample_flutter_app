import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:innovative_farming/data/databasehelper.dart';
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
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  String _username,_password;

  LoginPagePresenter _presenter;


  _LoginPageState(){
    _presenter = new LoginPagePresenter(this);
  }
void _submit(){
    final form = formKey.currentState;

    if(form.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        _presenter.doLogin(_username, _password);

      });
    }
}

  void _showSnackBar(String text){
  scaffoldKey.currentState.showSnackBar(
    new SnackBar(
      content: new Text(text),
    )
  );
}


  @override
  Widget build(BuildContext context) {
    _ctx = context;
    var loginBtn = new RaisedButton(
      onPressed: _submit,
      child: new Text("Login"),
      color: Colors.green,
    );
    var loginform = new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Text("Login to SQL app", textScaleFactor: 2.0,),
        new Form(
            key: formKey,
            child: new Column(
              children: <Widget>[
                new Padding(padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  onSaved: (val)=> _username = val,
                  decoration: new InputDecoration(labelText: "Username"),
                ),
                ),
                new Padding(padding: const EdgeInsets.all(10.0),
                  child: new TextFormField(
                    onSaved: (val)=> _password = val,
                    decoration: new InputDecoration(labelText: "Password"),
                  ),
                )
              ],
            ),
        ),
        loginBtn
      ],

    );
    return new Scaffold(
      appBar: new AppBar(
        leading: Icon(Icons.menu),
        title: new Text("Login64"),
        actions: [
          Icon(Icons.favorite),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
      key: scaffoldKey,
        ),
      key: scaffoldKey,
      body: new Container(
        child: new Center(child: loginform,),
      ),
    );
  }

  @override
  void onLoginError(String error) {
    // TODO: implement onLoginError
    _showSnackBar(error);
    setState(()  {
      _isLoading = false;
    });
  }

  @override
  void onLoginSuccess(User user) async{
    // TODO: implement onLoginSuccess
    _showSnackBar(user.toString());
    setState(()  {
      _isLoading = false;
    });
    var db = new DataBaseHelper();
    await db.saveUser(user);
    Navigator.of(context).pushNamed("/home");
  }




}
