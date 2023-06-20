import 'package:flutter/material.dart';
import 'package:gap/gap.dart';



class AppColumnLayout extends StatelessWidget {
  const AppColumnLayout({Key? key, required this.first, required this.second, required this.alignment, this.isColor}) : super(key: key);
  final CrossAxisAlignment alignment;
  final String first;
  final String second;
  final bool? isColor;
  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;


    double height5=screenHeight/174.2;
    double height10=screenHeight/78.1;

//dynamic width
    return  Column(
      crossAxisAlignment: alignment,
      children: [
        Text(first,style:TextStyle(fontSize: height10*1.7,color:isColor==true?Colors.white: Colors.black,fontWeight: FontWeight.w500) ,),
        Gap(height5),
        Text(second,style:TextStyle(fontSize: height10*1.4,color:isColor==true?Colors.white: Colors.grey.shade500,fontWeight: FontWeight.w500) ,)
      ],
    );
  }
}
