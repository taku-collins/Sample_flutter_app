


//import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:innovative_farming/models/User.dart';

class registrationView extends StatelessWidget {

  final GlobalKey<FormState> _rFormkey = GlobalKey<FormState>();


  Widget _buildFirstName(){
    return  TextFormField(
      decoration: InputDecoration(
        labelText: "first name",
        labelStyle: TextStyle(
            color: Colors.blue,
            fontSize: 15,
            fontWeight: FontWeight.normal),

      ),
  /*    validator: (String value){
//        var newuser = new user( );
        if(value.isEmpty){
          return 'First Name is required';
        }
      // ignore: missing_return, missing_return
      },*/
      onSaved: (String value){

      },
    ) ;
  }
  Widget _buildLastName(){
    return  TextFormField(
      decoration: InputDecoration(
        labelText: "Last name",
        labelStyle: TextStyle(
            color: Colors.blue,
            fontSize: 15,
            fontWeight: FontWeight.normal),

      ),
      /*    validator: (String value){
//        var newuser = new user( );
        if(value.isEmpty){
          return 'First Name is required';
        }
      // ignore: missing_return, missing_return
      },*/
      onSaved: (String value){

      },
    ) ;
  }
  Widget _buildPassword(){
    return  TextFormField(
      decoration: InputDecoration(
        labelText: "Password",
        labelStyle: TextStyle(
            color: Colors.blue,
            fontSize: 15,
            fontWeight: FontWeight.normal),

      ),
      keyboardType: TextInputType.visiblePassword,
      /*    validator: (String value){
//        var newuser = new user( );
        if(value.isEmpty){
          return 'First Name is required';
        }
      // ignore: missing_return, missing_return
      },*/
      onSaved: (String value){

      },
    ) ;
  }
  Widget _buildTelNumber(){
    return  TextFormField(
      decoration: InputDecoration(
        labelText: "Phone Number",
        labelStyle: TextStyle(
            color: Colors.blue,
            fontSize: 15,
            fontWeight: FontWeight.normal),

      ),
      keyboardType: TextInputType.phone,
      /*    validator: (String value){
//        var newuser = new user( );
        if(value.isEmpty){
          return 'First Name is required';
        }
      // ignore: missing_return, missing_return
      },*/
      onSaved: (String value){

      },
    ) ;
  }
  Widget _buildEmailtName(){
    return  TextFormField(
      decoration: InputDecoration(
        labelText: "Email ",
        labelStyle: TextStyle(
            color: Colors.blue,
            fontSize: 15,
            fontWeight: FontWeight.normal),

      ),
      keyboardType: TextInputType.number,
      /*    validator: (String value){
//        var newuser = new user( );
        if(value.isEmpty){
          return 'First Name is required';
        }

        if(!RegExp(r" )){
        return 'Please enter a valid email address';
        }
        return null;

      // ignore: missing_return, missing_return
      },*/
      onSaved: (String value){

      },
    ) ;
  }
  Widget _buildCountryName(){
    return  TextFormField(
      decoration: InputDecoration(
        labelText: "Country",
        labelStyle: TextStyle(
            color: Colors.blue,
            fontSize: 15,
            fontWeight: FontWeight.normal),

      ),
      /*    validator: (String value){
//        var newuser = new user( );
        if(value.isEmpty){
          return 'First Name is required';
        }
      // ignore: missing_return, missing_return
      },*/
      onSaved: (String value){

      },
    ) ;
  }

  Widget _buildDoB(){
    return  TextFormField(
      decoration: InputDecoration(
        labelText: "Date of Birth",
        labelStyle: TextStyle(
            color: Colors.blue,
            fontSize: 15,
            fontWeight: FontWeight.normal),

      ),
      /*    validator: (String value){
//        var newuser = new user( );
        if(value.isEmpty){
          return 'First Name is required';
        }
      // ignore: missing_return, missing_return
      },*/
      onSaved: (String value){

      },
    ) ;
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
      ),
      body: Container(

       child :
          Column(
            children: [
              Form(
                key: _rFormkey,
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Register", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.grey),),
                  SizedBox(height: 25,),
                  _buildFirstName(),
                  _buildLastName(),
                  _buildPassword(),
                  _buildTelNumber(),
                  _buildEmailtName(),
                  _buildCountryName(),
                  _buildDoB(),
                  SizedBox(height: 100),


                RaisedButton(
                  child: Text("Submit", style: TextStyle(color: Colors.black, fontSize: 16),),
                    onPressed: () => {
                    if( !_rFormkey.currentState.validate() ){
                    },
                      _rFormkey..currentState.save()  },
                )


                   ],
              )
              ),
            ],
          )

      ),
    );
  }
}
