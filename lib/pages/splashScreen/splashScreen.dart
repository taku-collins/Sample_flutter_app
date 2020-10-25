


import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:innovative_farming/pages/login/LoginPage.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() =>  _SplashScreenState();
 
  }

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),
        ()=>Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => LoginPage() ))
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: Icon(
                          Icons.add_shopping_cart,
                          color: Colors.deepOrangeAccent,
                          size: 50.0,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10.0)
                        ,),
                      Text(
                        "Float Card", style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),

                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    Padding(padding: EdgeInsets.only(top: 20.0)
                    ),
                    Text("WellCome Loading....",
                        style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),)
                  ],

                  //15;38

                ),

                   )
            ],
          )
        ],
      ),
    );
  }

}

 