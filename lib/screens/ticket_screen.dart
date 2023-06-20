import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../app_style.dart';

import '../../widgets/home_screen_widgets/ticket_view.dart';
import '../../widgets/ticket_screen_widgets/column_layout.dart';
import '../../widgets/ticket_screen_widgets/ticket_tab.dart';

import '../widgets/home_screen_widgets/app_info_lists.dart';
import '../widgets/ticket_screen_widgets/layoutbuildeer.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;

    double height5=screenHeight/174.2;
    double height10=screenHeight/78.1;
    double height15=screenHeight/52.06;
    double height20=screenHeight/39.05;
    double height30=screenHeight/26.03;
    double height45=screenHeight/17.35;
    double height50=screenHeight/15.62;
//dynamic width

    double width10=screenWidth/39.27;
    double width15=screenWidth/26.18;

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
          children: [
            ListView(
              padding:  EdgeInsets.only(top: height20*3,left: width15,right: width15),
              children: [
                Text("Tickets",style: TextStyle(fontSize:height20+height5,color: const Color(0xff3b3b3b),fontWeight: FontWeight.bold).copyWith(fontSize: height30),),
                Gap(height15),
                const AppTicketTab(text1: "AirLine tickets", text2: "Hotels"),
                Gap(height15),
                TicketView(
                  ticket: ticketList[0],
                  isColor: false,
                ),
                /*plane*/
                Container(
                  padding:  EdgeInsets.only(left: width15,right: width15,top: height20,bottom: height20),
                  margin:  EdgeInsets.only(left: width15*1.0666,right: width15*1.0666,),
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
                  padding: EdgeInsets.symmetric(horizontal: height20),
                  child: const AppLayoutWidget(isColor: false, sections: 15,),
                ),
                Container(
                  padding:  EdgeInsets.only(left: width15*1.0666,right: width15*1.0666,top: height20,bottom: height20),
                  margin:  EdgeInsets.only(left: width15*1.0666,right: width15*1.0666,),
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
                  padding: EdgeInsets.symmetric(horizontal: height20),
                  child: const AppLayoutWidget(isColor: false, sections: 15,),
                ),
                /*visa*/
                Container(
                  padding:  EdgeInsets.only(left: width15,right: width15,top: height20,bottom: height20),
                  margin:  EdgeInsets.only(left: width15*1.0666,right: width15*1.0666,),
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
                                  Text("***2462",style:TextStyle(fontSize: height10*1.7,color: Colors.grey.shade500,fontWeight: FontWeight.w500).copyWith(color:Colors.black),),
                                ],
                              ),
                              Gap(height5),
                              Text("Payment method",style: TextStyle(fontSize: height10*1.4,color: Colors.grey.shade500,fontWeight: FontWeight.w500).copyWith(color: Colors.grey.shade500),)
                            ],
                          ),
                          const AppColumnLayout(first: "\$249.99", second: "Price",alignment: CrossAxisAlignment.end, isColor: false),
                        ],
                      )
                    ],
                  ),
                ),
                /*visa*/
                const SizedBox(height: 1,),
                /*Barcode*/
                Container(
                  height: height45*2,
                  margin: EdgeInsets.symmetric(horizontal: height15),
                  padding: EdgeInsets.symmetric(vertical:width10),
                  decoration:BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(height20),bottomRight: Radius.circular(height20))
                  ) ,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: height15),
                    padding: EdgeInsets.symmetric(horizontal:height15/2),
                    decoration: const BoxDecoration(

                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(height15),
                      child: BarcodeWidget(
                        data: 'https://www.linkedin.com/in/ahmed-maher-743915216/',
                        barcode: Barcode.code128(),
                        drawText: false,
                        color: Styles.textColor,
                        width: double.infinity,height: height50*1.4,
                      ),
                    ),
                  ),
                ),
                /*Barcode*/
                Gap(height20),
                TicketView(ticket: ticketList[1], isColor: true),
                Gap(height10),
              ],
            ),
            Positioned(
              left: height10*2.3,
              top: height50*5.12,
              child: Container(
                padding: EdgeInsets.all(height5/1.6666),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor,width: height5/2.5),
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
            Positioned(
              right: height10*2.3,
              top: height50*5.12,
              child: Container(
                padding: EdgeInsets.all(height5/1.6666),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor,width: height5/2.5),
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
          ]),
    );
  }
}
//
