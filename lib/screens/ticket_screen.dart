import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/app_style.dart';
import 'package:ticketbookingapp/widgets/home_screen_widgets/ticket_view.dart';
import 'package:ticketbookingapp/widgets/ticket_screen_widgets/column_layout.dart';
import 'package:ticketbookingapp/widgets/ticket_screen_widgets/ticket_tab.dart';

import '../widgets/home_screen_widgets/app_info_lists.dart';
import '../widgets/ticket_screen_widgets/layoutbuildeer.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
          children: [
        ListView(
          padding: const EdgeInsets.only(top: 60,left: 15,right: 15),
          children: [
            Text("Tickets",style: Styles.headLineStyle1.copyWith(fontSize: 30),),
            const Gap(15),
            const AppTicketTab(text1: "AirLine tickets", text2: "Hotels"),
            const Gap(15),
            Container(
              child: TicketView(
                ticket: ticketList[0],
                isColor: false,
              ),
            ),
            /*plane*/
            Container(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 20,bottom: 20),
              margin: const EdgeInsets.only(left: 16, right: 16),
              decoration: const BoxDecoration(
                color: Colors.white
              ),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                     AppColumnLayout(first: "Flutter DB", second: "Passenger",alignment: CrossAxisAlignment.start, isColor: false,),
                      AppColumnLayout(first: "5221478566", second: "Passport",alignment: CrossAxisAlignment.end, isColor: false),
                    ],
                  )
                ],
              ),
            ),
            /*plane*/
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: AppLayoutWidget(isColor: false, sections: 15,),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 20,bottom: 20),
              margin: const EdgeInsets.only(left: 16, right: 16),
              decoration: const BoxDecoration(
                  color: Colors.white
              ),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      AppColumnLayout(first: "0055 444 77147", second: "number of E-ticket",alignment: CrossAxisAlignment.start, isColor: false,),
                      AppColumnLayout(first: "B2SG28", second: "Booking code",alignment: CrossAxisAlignment.end, isColor: false),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: AppLayoutWidget(isColor: false, sections: 15,),
            ),
            /*visa*/
            Container(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 20,bottom: 20),
              margin: const EdgeInsets.only(left: 16, right: 16),
              decoration: const BoxDecoration(
                  color: Colors.white
              ),
              child:  Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                            Image.asset("assets/images/visa.png",scale: 11,),
                              Text("***2462",style: Styles.headLineStyle3.copyWith(color:Colors.black),),
                            ],
                          ),
                          Gap(5),
                          Text("Payment method",style: Styles.headLineStyle4.copyWith(color: Colors.grey.shade500),)
                        ],
                      ),
                      AppColumnLayout(first: "\$249.99", second: "Price",alignment: CrossAxisAlignment.end, isColor: false),
                    ],
                  )
                ],
              ),
            ),
            /*visa*/
            SizedBox(height: 1,),
            /*Barcode*/
            Container(
              height: 90,
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(vertical:10),
              decoration:BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21),bottomRight: Radius.circular(21))
              ) ,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal:7),
                decoration: BoxDecoration(

                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: BarcodeWidget(
                      data: 'https://www.linkedin.com/in/ahmed-maher-743915216/',
                      barcode: Barcode.code128(),
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,height: 70,
                  ),
                ),
              ),
            ),
            /*Barcode*/
            Gap(22),
            TicketView(ticket: ticketList[1], isColor: true)
          ],
        ),
        Positioned(
          left: 23,
          top: 256,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Styles.textColor,width: 2),
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
            Positioned(
              right: 23,
              top: 256,
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor,width: 2),
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            )
      ]),
    );
  }
}
//
