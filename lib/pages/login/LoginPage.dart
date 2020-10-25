//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'package:innovative_farming/pages/product/addToCard.dart';
import 'package:innovative_farming/pages/registration/registration.dart';
import 'package:innovative_farming/pages/search/search.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  BuildContext _ctx;
  bool _isLoading;
  //final formKey = new GlobalKey<FormState>();

  /*
  DatabaseReference userRef;

//for our ffor to validate, save  and get information out of the form
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

   */
  final scaffoldKey = new GlobalKey<ScaffoldState>();

   String _username, _password;

  // LoginPagePresenter _presenter;

  /*
  @override
  void initState(){
  super.initState();
   item = Item("","");
   final FirebaseDatabase database = FirebaseDatabase(app: app);
   itemRef = database.reference().child('items');
   }
   */
  //  _LoginPageState() { //_presenter = new LoginPagePresenter(this); }
  /*void _submit() {
    final form = formKey.currentState;
    if (form.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        _presenter.doLogin(_username, _password);
      });
    }
  }*/

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    var loginBtn = new RaisedButton(
      onPressed: onMoveLogin,
      child: new Text("Login"),
      color: Colors.grey,
    );

    var loginForm = Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Image.asset('assets/images/land.png'),
          new Padding(
            padding: const EdgeInsets.all(10.0),
            child: new TextFormField(
              onSaved: (val) => _username = val,
              decoration: new InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: Colors.purple,
                ),
                labelText: "Name",
              ),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onSaved: (val) => _password = val,
              decoration: new InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    color: Colors.purple,
                  ),
                  labelText: "Password"),
            ),
          ),
          loginBtn,
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                child: IconButton(
                    icon: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    onPressed: null),
              ),
              SizedBox(
                width: 15,
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                child: IconButton(
                    icon: Icon(
                      Icons.portrait,
                      color: Colors.white,
                    ),
                    onPressed: null),
              ),
              SizedBox(
                width: 15,
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                child: IconButton(
                    icon: Icon(
                      Icons.android,
                      color: Colors.white,
                    ),
                    onPressed: null),
              ),
            ],
          )
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        /*leading: IconButton(icon: Icon(Icons.menu), onPressed: (){
          //mathod for sidebar SideBarLayout();
                  },
        ),*/
        title: new Text("Login"),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              //method for new scene
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => AddToCard()));
            },
          ),
          IconButton(
            icon: Icon(Icons.app_registration),
            onPressed: () {
              //method for new scene
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => registrationView()));
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => search()));
                //method for new scene
              },
            ),
          ),
          Icon(Icons.more_vert),
        ],
        // key: scaffoldKey,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.red,
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Name",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              "Navigation",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.person),
              title: Text("Account"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.notifications),
              title: Text("Notification"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.lock_clock),
              title: Text("Setting"),
            ),
          ],
        ),
      ),
      //  key: scaffoldKey,
      body: new Container(
        //scrollDirection:Axis.horizontal,
        child: new Center(
          child: loginForm,
        ),
      ),
    );
  }

  @override
  void onLoginError(String error) {
    // TODO: implement onLoginError
    _showSnackBar(error);
    setState(() {
      _isLoading = false;
    });
  }



  @override
  void onMoveLogin() async {
    Navigator.of(context).pushNamed('/home', arguments: 'cv');
  }
}
