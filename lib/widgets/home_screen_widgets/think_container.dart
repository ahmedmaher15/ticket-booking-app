import 'package:flutter/material.dart';

class ThinkContainer extends StatelessWidget {
  const ThinkContainer({Key? key, this.isColor}) : super(key: key);
final bool? isColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2.5,color:isColor==true?Colors.white:Color(0xff526799))
      ),
    );
  }
}
