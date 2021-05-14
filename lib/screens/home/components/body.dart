import 'package:first/constants.dart';
import 'package:flutter/material.dart';

 class Body extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     //It will be provide us total height and width of our screen
     Size size = MediaQuery.of(context).size;
     return Column(
       children: <Widget>[
         Container(
           // It will cover 20% of our total height
           height:size.height * 0.2,
           child: Stack(
             children: <Widget>[
               Container(
                 height:size.height * 0.2 - 27,
                 decoration: BoxDecoration( 
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36)
                  )),
               ),
               Positioned(
                 child: Container(
                   margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                   height: 44,
                   decoration:  BoxDecoration(
                     color: Colors.white
                    ),
                 ) )
             ],),
         )
       ],
     );
   }
 }