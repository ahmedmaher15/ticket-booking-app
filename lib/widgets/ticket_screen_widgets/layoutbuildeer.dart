import 'package:flutter/material.dart';

class AppLayoutWidget extends StatelessWidget {
  const AppLayoutWidget({Key? key, required this.isColor, required this.sections}) : super(key: key);
final bool? isColor;
final int sections;
  @override
  Widget build(BuildContext context) {
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
                  width: 3,
                  height: 1,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: isColor==true?Colors.white:Colors.grey.shade500),
                  ),
                )),
          ),
    );
  }
}
