import 'package:flutter/material.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({Key? key, required this.icon, this.onTap})
      : super(key: key);

  final IconData? icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    double height20 = screenHeight / 39.05;

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: screenHeight / 21.69,
        width: screenWidth / 21.69,
        child: Icon(
          icon,
          color: Colors.white,
          size: height20 * 2,
        ),
      ),
    );
  }
}
