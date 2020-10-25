

// Defining tabbar and controller

// argument in itemCard String title, String imgPath, bool isFavor

import 'package:flutter/material.dart';

Widget itemCard(String imgPath) {
  return Container(


   padding: EdgeInsets.all(2),
    height: 180,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset("assets/images/land.png"),
        Expanded(
            child: Container(

              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [




                  Text(
                    "Area",
                    style: TextStyle(
                        fontFamily: 'QUicksand',
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Material(
                    //elevation: isFavorite ? 0.0: 2.0,
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.green.withOpacity(0.1)),
                      child: Center(
                        child: IconButton(
                            icon: Icon(Icons.favorite), onPressed: null),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    width: 200.0,
                    child: Text(
                      "the area is one of the best in Cameroon located in southwest of the country",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          color: Colors.grey,
                          fontSize: 12.0),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 1.0,
                      ),
                      Container(
                        height: 40.0,
                        width: 50.0,
                        color: Colors.pink,
                        child: Text(
                          '248',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 5.0,),
                      Container(
                        height: 40.0,
                        width: 90.0,
                        color: Colors.deepOrange,
                        child: Text(
                          "Add to Card",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold),
                        ),)
                    ],
                  ),







                ],
              ),
            ))
      ],
    ),
  );
}
