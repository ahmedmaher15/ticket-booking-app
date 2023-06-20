import 'package:flutter/material.dart';

import '../../app_style.dart';

class ViewBar extends StatelessWidget {
  const ViewBar({Key? key, required this.text1, required this.text2}) : super(key: key);
  final String text1;
  final String text2;


  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;

    double height10=screenHeight/78.1;
    double height20=screenHeight/39.05;

    return    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text1,style:TextStyle(fontSize:height10*1.7,color: const Color(0xff3b3b3b),fontWeight: FontWeight.bold),),
        InkWell(
            onTap: (){},
            child: Text(text2,style: TextStyle(fontSize: height20,color: Styles.primaryColor,fontWeight: FontWeight.w500))),
      ],

    );
  }
}
