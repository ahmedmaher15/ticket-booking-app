import 'package:flutter/material.dart';

import '../../app_style.dart';

class ViewBar extends StatelessWidget {
  const ViewBar({Key? key, required this.text1, required this.text2}) : super(key: key);
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text1,style: Styles.headLineStyle2,),
        InkWell(
            onTap: (){},
            child: Text(text2,style: Styles.textStyle.copyWith(color: Styles.primaryColor),)),
      ],

    );
  }
}
