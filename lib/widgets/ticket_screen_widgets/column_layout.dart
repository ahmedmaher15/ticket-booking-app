import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../app_style.dart';

class AppColumnLayout extends StatelessWidget {
  const AppColumnLayout({Key? key, required this.first, required this.second, required this.alignment, this.isColor}) : super(key: key);
  final CrossAxisAlignment alignment;
  final String first;
  final String second;
  final bool? isColor;
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: alignment,
      children: [
        Text(first,style: Styles.headLineStyle3.copyWith(color:isColor==true?Colors.white: Colors.black),),
        Gap(5),
        Text(second,style: Styles.headLineStyle4.copyWith(color:isColor==true?Colors.white: Colors.grey.shade500),)
      ],
    );
  }
}
