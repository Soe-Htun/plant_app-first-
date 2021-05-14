import 'package:first/constants.dart';
import 'package:first/screens/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(
      //   child: Text("Hello"),
      // ),
      appBar:buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('graphics/icons/menurepo.svg', color: Colors.white, width: 25,) ,
        onPressed: () {},

      ),

    );
  }
}