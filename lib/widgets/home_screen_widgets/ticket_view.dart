import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/app_style.dart';
import 'package:ticketbookingapp/dimensions.dart';
import 'package:ticketbookingapp/widgets/home_screen_widgets/think_container.dart';
import 'package:ticketbookingapp/widgets/ticket_screen_widgets/column_layout.dart';
import 'package:ticketbookingapp/widgets/ticket_screen_widgets/layoutbuildeer.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key, required this.ticket,required this.isColor}) : super(key: key);
 final Map<String, dynamic> ticket;
 final bool? isColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimensions.width50*6.4,
      height: Dimensions.height50*3.5,
      child: Container(
        margin: EdgeInsets.only(left: Dimensions.width15, right: Dimensions.width15),
        child: Column(
          children: [
            /*
              show the blue part of the card/ticket
               */
            Container(
              decoration: BoxDecoration(
                  color:isColor==true?Color(0xff526799):Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20))),
              padding: EdgeInsets.all(Dimensions.height15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style:
                            Styles.headLineStyle3.copyWith(color:isColor==true?Colors.white:Colors.black),
                      ),
                      Expanded(child: Container()),
                      ThinkContainer(isColor: isColor,),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: Dimensions.height25+Dimensions.height5,
                            child: AppLayoutWidget(isColor: isColor, sections: 5,),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                size: Dimensions.height30+Dimensions.height5/39,
                                color: isColor==true?Colors.white:Color(0xff526799),
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
                            Styles.headLineStyle3.copyWith(color:isColor==true?Colors.white:Colors.black),
                      )
                    ],
                  ),
                  Gap(Dimensions.height5/1.6666),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: Dimensions.width50*2,
                        child: Text(
                          ticket['from']['name'],
                          style: Styles.headLineStyle4
                              .copyWith(color:isColor==true?Colors.white:Colors.grey.shade500),
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style:
                            Styles.headLineStyle4.copyWith(color:isColor==true?Colors.white:Colors.grey.shade500),
                      ),
                      SizedBox(
                        width: Dimensions.width50*2,
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: Styles.headLineStyle4
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
                    height: Dimensions.height20,
                    width: Dimensions.height10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color:isColor==true?Colors.white:Colors.grey.shade300,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(Dimensions.height10),
                              bottomRight: Radius.circular(Dimensions.height10))),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(Dimensions.radius15/1.25),
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
                                  width: Dimensions.width5,
                                  height: Dimensions.height5/5,
                                  child: DecoratedBox(
                                    decoration:
                                        BoxDecoration(color:isColor==true?Colors.white:Colors.grey.shade300),
                                  ),
                                )),
                      ),
                    ),
                  )),
                  SizedBox(
                    height: Dimensions.height20,
                    width: Dimensions.width10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color:isColor==true?Colors.white:Colors.grey.shade300,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(Dimensions.height10),
                              bottomLeft: Radius.circular(Dimensions.height10))),
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
                      bottomLeft: Radius.circular(isColor==true? Dimensions.height20:0),
                      bottomRight: Radius.circular(isColor==true? Dimensions.height20:0))),
              padding:
                  EdgeInsets.only(left: Dimensions.width15, top: Dimensions.height10/2, right: Dimensions.width15, bottom: Dimensions.height10),
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
