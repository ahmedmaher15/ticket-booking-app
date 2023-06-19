import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/dimensions.dart';
import '../../app_style.dart';
class AppIconWidget extends StatelessWidget {
  const AppIconWidget({Key? key, required this.icon, required this.text}) : super(key: key);
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:Dimensions.width10,horizontal: Dimensions.height15/1.25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.height10),
          color: Colors.white
      ),
      child: Row(
        children: [
          Icon(icon,color: const Color(0xffbfc2df),size: Dimensions.height30+Dimensions.height5,),
          Gap(Dimensions.width15),
          Text(text,style:TextStyle(fontSize: Dimensions.height20,color: Color(0xff3b3b3b),fontWeight: FontWeight.w500),)
        ],
      ),);
  }
}
