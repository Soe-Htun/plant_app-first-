import 'package:first/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                 bottom: 0,
                 left: 0,
                 right: 0,
                 child: Container(
                   alignment: Alignment.center,
                   
                   margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                   height: 44,
                   decoration:  BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(20),
                     boxShadow:  [
                       BoxShadow(
                         offset: Offset(0,10),
                         blurRadius: 50,
                         color: kPrimaryColor.withOpacity(0.23),
                       )
                     ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: 
                          SvgPicture.asset("graphics/icons/search.svg", color: kPrimaryColor, width: 35, height: 20,)
                      ),
                    ),
                 ) )
             ],),
         )
       ],
     );
   }
 }