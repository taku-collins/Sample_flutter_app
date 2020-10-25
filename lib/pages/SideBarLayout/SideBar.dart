


import 'package:flutter/material.dart';

class SideBarLayout extends StatefulWidget {

  @override
 _SideBarLayoutState createState() => _SideBarLayoutState();
  }

class  _SideBarLayoutState extends State<SideBarLayout> with SingleTickerProviderStateMixin<SideBarLayout>{
  AnimationController _animationController;
  final bool isSideBaropen = true;
  final _animationDuration = const Duration(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: _animationDuration);

  }

  @override
  void dispose(){
    //_animationController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screanwidth = MediaQuery.of(context).size.width;

    return AnimatedPositioned(
      duration: _animationDuration,
      top: 0,
      bottom: 0,
      left: isSideBaropen ? 0 : 0,
      right: isSideBaropen ? 0 : screanwidth-45,
      child: Row(
          children: [
            Expanded(
              child: Container(
              color: Colors.grey,
            )
            ),
            Align(
              alignment: Alignment( 0, -0.9),
              child: Container(
              width: 35,
              height: 110,
                color: Colors.amber,
              ),
            )
          ],
      ),
    );
  }


}
