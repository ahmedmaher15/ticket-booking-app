import 'package:flutter/material.dart';


class AppLayoutWidget extends StatelessWidget {
  const AppLayoutWidget({Key? key, required this.isColor, required this.sections}) : super(key: key);
  final bool? isColor;
  final int sections;
  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;

    double height5=screenHeight/174.2;
//dynamic width
    double width5=screenWidth/78.54;

    return LayoutBuilder(
      builder: (BuildContext context,
          BoxConstraints constraints) =>
          Flex(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            direction: Axis.horizontal,
            mainAxisSize: MainAxisSize.max,
            children: List.generate(
                (constraints.constrainWidth() / sections).floor(),
                    (index) => SizedBox(
                  width: width5/1.666,
                  height: height5*.2,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: isColor==true?Colors.white:Colors.grey.shade500),
                  ),
                )),
          ),
    );
  }
}
