import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/app_style.dart';
import 'package:ticketbookingapp/widgets/home_screen_widgets/think_container.dart';
import 'package:ticketbookingapp/widgets/ticket_screen_widgets/column_layout.dart';
import 'package:ticketbookingapp/widgets/ticket_screen_widgets/layoutbuildeer.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key, required this.ticket,required this.isColor}) : super(key: key);
 final Map<String, dynamic> ticket;
 final bool? isColor;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width*0.85,
      height: 175,
      child: Container(
        margin: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            /*
              show the blue part of the card/ticket
               */
            Container(
              decoration: BoxDecoration(
                  color:isColor==true?Color(0xff526799):Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: EdgeInsets.all(16),
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
                            height: 24,
                            child: AppLayoutWidget(isColor: isColor, sections: 5,),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
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
                  Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
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
                        width: 100,
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
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color:isColor==true?Colors.white:Colors.grey.shade300,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(12),
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
                                  width: 5,
                                  height: 1,
                                  child: DecoratedBox(
                                    decoration:
                                        BoxDecoration(color:isColor==true?Colors.white:Colors.grey.shade300),
                                  ),
                                )),
                      ),
                    ),
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color:isColor==true?Colors.white:Colors.grey.shade300,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
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
                      bottomLeft: Radius.circular(isColor==true? 21:0),
                      bottomRight: Radius.circular(isColor==true? 21:0))),
              padding:
                  EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 10),
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
