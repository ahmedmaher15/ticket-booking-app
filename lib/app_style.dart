import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ticketbookingapp/dimensions.dart';

Color primary=const Color(0xFF687daf);
class Styles{
  static Color primaryColor=primary;
  static Color textColor=const Color(0xff3b3b3b);
  static Color bgColor= const Color(0xffeeedf2);
  static Color orangeColor=const Color(0xfff37b67);
  static TextStyle textStyle=TextStyle(fontSize: Dimensions.height20,color: textColor,fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1=TextStyle(fontSize: Dimensions.font26,color: textColor,fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2=TextStyle(fontSize: Dimensions.height20*1.05,color: textColor,fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3=TextStyle(fontSize: Dimensions.height10*1.7,color: Colors.grey.shade500,fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4=TextStyle(fontSize: Dimensions.height10*1.4,color: Colors.grey.shade500,fontWeight: FontWeight.w500);

}