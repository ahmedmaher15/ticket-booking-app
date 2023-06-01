import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../app_layout.dart';
import '../../app_style.dart';

class AppIconWidget extends StatelessWidget {
  const AppIconWidget({Key? key, required this.icon, required this.text}) : super(key: key);
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:10,horizontal: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white
      ),
      child: Row(
        children: [
          Icon(icon,color: Color(0xffbfc2df),),
          Gap(AppLayout.getwidth(25)),
          Text(text,style: Styles.textStyle,)
        ],
      ),);
  }
}
