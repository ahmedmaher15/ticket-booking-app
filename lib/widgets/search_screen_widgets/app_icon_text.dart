import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class AppIconWidget extends StatelessWidget {
  const AppIconWidget({Key? key, required this.icon, required this.text}) : super(key: key);
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;
    double height5=screenHeight/174.2;
    double height10=screenHeight/78.1;
    double height15=screenHeight/52.06;
    double height20=screenHeight/39.05;
    double height30=screenHeight/26.03;

//dynamic width
    double width10=screenWidth/39.27;
    double width15=screenWidth/26.18;

    return Container(
      padding: EdgeInsets.symmetric(vertical:width10,horizontal: height15/1.25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(height10),
          color: Colors.white
      ),
      child: Row(
        children: [
          Icon(icon,color: const Color(0xffbfc2df),size: height30+height5,),
          Gap(width15),
          Text(text,style:TextStyle(fontSize: height20,color: const Color(0xff3b3b3b),fontWeight: FontWeight.w500),)
        ],
      ),);
  }
}
