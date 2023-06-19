import 'package:flutter/material.dart';
import 'package:ticketbookingapp/dimensions.dart';

class ThinkContainer extends StatelessWidget {
  const ThinkContainer({Key? key, this.isColor}) : super(key: key);
final bool? isColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimensions.height5/1.666),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.height20),
        border: Border.all(width: Dimensions.width5/2,color:isColor==true?Colors.white:Color(0xff526799))
      ),
    );
  }
}
