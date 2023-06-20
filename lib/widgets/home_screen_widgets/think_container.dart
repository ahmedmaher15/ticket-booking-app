import 'package:flutter/material.dart';


class ThinkContainer extends StatelessWidget {
  const ThinkContainer({Key? key, this.isColor}) : super(key: key);
  final bool? isColor;
  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;

    double height5=screenHeight/174.2;
    double height20=screenHeight/39.05;

//dynamic width
    double width5=screenWidth/78.54;

    return Container(
      padding: EdgeInsets.all(height5/1.666),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(height20),
          border: Border.all(width: width5/2,color:isColor==true?Colors.white:const Color(0xff526799))
      ),
    );
  }
}
