import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../app_style.dart';

import '../../widgets/home_screen_widgets/think_container.dart';
import '../../widgets/ticket_screen_widgets/column_layout.dart';
import '../../widgets/ticket_screen_widgets/layoutbuildeer.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key, required this.ticket,required this.isColor}) : super(key: key);
  final Map<String, dynamic> ticket;
  final bool? isColor;
  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;

    double height5=screenHeight/174.2;
    double height10=screenHeight/78.1;
    double height15=screenHeight/52.06;
    double height20=screenHeight/39.05;
    double height25=screenHeight/31.24;
    double height30=screenHeight/26.03;

    double height50=screenHeight/15.62;
//dynamic width
    double width5=screenWidth/78.54;
    double width10=screenWidth/39.27;
    double width15=screenWidth/26.18;

    double width50=screenWidth/7.8;
    return SizedBox(
      width: width50*6.4,
      height: height50*3.5,
      child: Container(
        margin: EdgeInsets.only(left: width15, right: width15),
        child: Column(
          children: [
            /*
              show the blue part of the card/ticket
               */
            Container(
              decoration: BoxDecoration(
                  color:isColor==true?const Color(0xff526799):Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(height20),
                      topRight: Radius.circular(height20))),
              padding: EdgeInsets.all(height15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style:
                        TextStyle(fontSize: height10*1.7,color: Colors.grey.shade500,fontWeight: FontWeight.w500).copyWith(color:isColor==true?Colors.white:Colors.black),
                      ),
                      Expanded(child: Container()),
                      ThinkContainer(isColor: isColor,),
                      Expanded(
                          child: Stack(
                            children: [
                              SizedBox(
                                height: height25+height5,
                                child: AppLayoutWidget(isColor: isColor, sections: 5,),
                              ),
                              Center(
                                child: Transform.rotate(
                                  angle: 1.5,
                                  child: Icon(
                                    Icons.local_airport_rounded,
                                    size: height30+height5/39,
                                    color: isColor==true?Colors.white:const Color(0xff526799),
                                  ),
                                ),
                              )
                            ],
                          )),
                      ThinkContainer(isColor: isColor),
                      Expanded(child: Container()),
                      Text(
                        ticket['to']['code'],
                        style:
                        TextStyle(fontSize: height10*1.7,color: Colors.grey.shade500,fontWeight: FontWeight.w500).copyWith(color:isColor==true?Colors.white:Colors.black),
                      )
                    ],
                  ),
                  Gap(height5/1.6666),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: width50*2,
                        child: Text(
                          ticket['from']['name'],
                          style: TextStyle(fontSize: height10*1.4,color: Colors.grey.shade500,fontWeight: FontWeight.w500)
                              .copyWith(color:isColor==true?Colors.white:Colors.grey.shade500),
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style:
                        TextStyle(fontSize: height10*1.4,color: Colors.grey.shade500,fontWeight: FontWeight.w500).copyWith(color:isColor==true?Colors.white:Colors.grey.shade500),
                      ),
                      SizedBox(
                        width: width50*2,
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: TextStyle(fontSize: height10*1.4,color: Colors.grey.shade500,fontWeight: FontWeight.w500)
                              .copyWith(color:isColor==true?Colors.white:Colors.grey.shade500),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*
              show the red part of the card/ticket
               */
            Container(
              color:isColor==true?Styles.orangeColor:Colors.white ,
              child: Row(
                children: [
                  SizedBox(
                    height: height20,
                    width: height10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color:isColor==true?Colors.white:Colors.grey.shade300,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(height10),
                              bottomRight: Radius.circular(height10))),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(height15/1.25),
                        child: LayoutBuilder(
                          builder:
                              (BuildContext context, BoxConstraints constraints) =>
                              Flex(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                direction: Axis.horizontal,
                                children: List.generate(
                                    (constraints.constrainWidth() / 15).floor(),
                                        (index) => SizedBox(
                                      width: width5,
                                      height: height5/5,
                                      child: DecoratedBox(
                                        decoration:
                                        BoxDecoration(color:isColor==true?Colors.white:Colors.grey.shade300),
                                      ),
                                    )),
                              ),
                        ),
                      )),
                  SizedBox(
                    height: height20,
                    width: width10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color:isColor==true?Colors.white:Colors.grey.shade300,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(height10),
                              bottomLeft: Radius.circular(height10))),
                    ),
                  )
                ],
              ),
            ),
            /*
              show the button red part of the card/ticket
               */
            Container (
              decoration: BoxDecoration(
                  color:isColor==true?Styles.orangeColor:Colors.white ,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isColor==true? height20:0),
                      bottomRight: Radius.circular(isColor==true? height20:0))),
              padding:
              EdgeInsets.only(left: width15, top: height10/2, right: width15, bottom: height10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(first: ticket['date'], second: "Date", alignment: CrossAxisAlignment.start, isColor: isColor,),
                      AppColumnLayout(first: ticket['departure_time'], second: "Departure Time", alignment: CrossAxisAlignment.center,isColor: isColor,),
                      AppColumnLayout(first: ticket["number"].toString(), second: "Number", alignment:  CrossAxisAlignment.end,isColor: isColor,),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
