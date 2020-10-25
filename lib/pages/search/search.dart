
import 'package:flutter/material.dart';




class search extends StatelessWidget {

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Container(

        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child:

          TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              isDense: true,
              contentPadding: EdgeInsets.all(2),
              labelText: 'Search',
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              icon: Icon(
                Icons.cancel,
                color: Colors.black,
                size: 25,

              ),
              //Icon(Icons.more_vert),
            ),
            onTap: () {
            },
          ),
        ),
      color: Colors.grey,
      ),

    );




 /*return Container(
    child: Scaffold(
      appBar: new AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            decoration:  InputDecoration(
              border: OutlineInputBorder(),
              isDense: true,
              contentPadding: EdgeInsets.all(2),
              labelText: 'Search',
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              icon: Icon(
                Icons.search,
                color: Colors.orange,
                size: 15,
              ),
              //Icon(Icons.more_vert),
            ),
            onTap: () {

            },
          ),
        ),
        actions: [
          Text("Cancel")
        ],
      ),
    ),
  );*/

  }

}