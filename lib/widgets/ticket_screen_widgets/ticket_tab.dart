import 'package:flutter/material.dart';


class AppTicketTab extends StatelessWidget {
  const AppTicketTab({Key? key, required this.text1, required this.text2}) : super(key: key);
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;
    double height20=screenHeight/39.05;
    double height50=screenHeight/15.62;
//dynamic width
    double width5=screenWidth/78.54;
    double width50=screenWidth/7.8;
    return FittedBox(
      child: Container (
        padding: EdgeInsets.all(screenHeight/223.14),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(screenHeight/15.62),
            color:  const Color(0xfff4f6fd)
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: screenWidth/111.57),
              width: width50*3.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(height50)),
                  color:  Colors.white
              ),
              child: Center(child: Text(text1,style: TextStyle(fontSize: height20),)),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: width5*1.4),
              width: width50*3.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(right: Radius.circular(height50)),
                  color:  Colors.transparent
              ),
              child: Center(child: Text(text2,style: TextStyle(fontSize: height20),)),
            ),
          ],
        ),

      ),
    );
  }
}
