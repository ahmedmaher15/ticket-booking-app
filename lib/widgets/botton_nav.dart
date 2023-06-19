import 'package:flutter/material.dart';

import '../dimensions.dart';
class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({Key? key, required this.icon, this.onTap}) : super(key: key);
 
final IconData? icon;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height:Dimensions.screenHeight/21.69,
        width: Dimensions.screenWidth/21.69,
        child: Icon(icon,color: Colors.white,size: Dimensions.height20*2,),),);
  }
}

