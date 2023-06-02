import 'package:flutter/material.dart';
import 'package:ticketbookingapp/dimensions.dart';

import '../../app_layout.dart';

class AppTicketTab extends StatelessWidget {
  const AppTicketTab({Key? key, required this.text1, required this.text2}) : super(key: key);
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return FittedBox(
      child: Container (
        padding: EdgeInsets.all(Dimensions.screenHeight/223.14),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.screenHeight/15.62),
            color:  Color(0xfff4f6fd)
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: Dimensions.screenWidth/111.57),
              width: width*.44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
                  color:  Colors.white
              ),
              child: Center(child: Text(text1,)),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 7),
              width: width*.44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
                  color:  Colors.transparent
              ),
              child: Center(child: Text(text2,)),
            ),
          ],
        ),

      ),
    );
  }
}
