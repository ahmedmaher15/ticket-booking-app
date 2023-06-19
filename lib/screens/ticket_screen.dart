import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/app_style.dart';
import 'package:ticketbookingapp/dimensions.dart';
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
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,

            child: ListView(
              padding:  EdgeInsets.only(top: Dimensions.height20*3,left: Dimensions.width15,right: Dimensions.width15),
              children: [
                Text("Tickets",style: Styles.headLineStyle1.copyWith(fontSize: Dimensions.height30),),
                Gap(Dimensions.height15),
                const AppTicketTab(text1: "AirLine tickets", text2: "Hotels"),
                Gap(Dimensions.height15),
                Container(
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: false,
                  ),
                ),
                /*plane*/
                Container(
                  padding:  EdgeInsets.only(left: Dimensions.width15,right: Dimensions.width15,top: Dimensions.height20,bottom: Dimensions.height20),
                  margin:  EdgeInsets.only(left: Dimensions.width15*1.0666,right: Dimensions.width15*1.0666,),
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
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.height20),
                  child: AppLayoutWidget(isColor: false, sections: 15,),
                ),
                Container(
                  padding:  EdgeInsets.only(left: Dimensions.width15*1.0666,right: Dimensions.width15*1.0666,top: Dimensions.height20,bottom: Dimensions.height20),
                  margin:  EdgeInsets.only(left: Dimensions.width15*1.0666,right: Dimensions.width15*1.0666,),
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
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.height20),
                  child: AppLayoutWidget(isColor: false, sections: 15,),
                ),
                /*visa*/
                Container(
                  padding:  EdgeInsets.only(left: Dimensions.width15,right: Dimensions.width15,top: Dimensions.height20,bottom: Dimensions.height20),
                  margin:  EdgeInsets.only(left: Dimensions.width15*1.0666,right: Dimensions.width15*1.0666,),
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
                              Gap(Dimensions.height5),
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
                  height: Dimensions.height45*2,
                  margin: EdgeInsets.symmetric(horizontal: Dimensions.height15),
                  padding: EdgeInsets.symmetric(vertical:Dimensions.width10),
                  decoration:BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(Dimensions.height20),bottomRight: Radius.circular(Dimensions.height20))
                  ) ,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: Dimensions.height15),
                    padding: EdgeInsets.symmetric(horizontal:Dimensions.height15/2),
                    decoration: BoxDecoration(

                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(Dimensions.height15),
                      child: BarcodeWidget(
                        data: 'https://www.linkedin.com/in/ahmed-maher-743915216/',
                        barcode: Barcode.code128(),
                        drawText: false,
                        color: Styles.textColor,
                        width: double.infinity,height: Dimensions.height50*1.4,
                      ),
                    ),
                  ),
                ),
                /*Barcode*/
                Gap(Dimensions.height20),
                TicketView(ticket: ticketList[1], isColor: true),
                Gap(Dimensions.height10),
              ],
            ),
         /*   children: [
          ListView(
            padding:  EdgeInsets.only(top: Dimensions.height20*3,left: Dimensions.width15,right: Dimensions.width15),
            children: [
              Text("Tickets",style: Styles.headLineStyle1.copyWith(fontSize: Dimensions.height30),),
               Gap(Dimensions.height15),
              const AppTicketTab(text1: "AirLine tickets", text2: "Hotels"),
               Gap(Dimensions.height15),
              Container(
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: false,
                ),
              ),
              *//*plane*//*
              Container(
                padding:  EdgeInsets.only(left: Dimensions.width15,right: Dimensions.width15,top: Dimensions.height20,bottom: Dimensions.height20),
                margin:  EdgeInsets.only(left: Dimensions.width15*1.0666,right: Dimensions.width15*1.0666,),
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
              *//*plane*//*
              Container(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.height20),
                child: AppLayoutWidget(isColor: false, sections: 15,),
              ),
              Container(
                padding:  EdgeInsets.only(left: Dimensions.width15*1.0666,right: Dimensions.width15*1.0666,top: Dimensions.height20,bottom: Dimensions.height20),
                margin:  EdgeInsets.only(left: Dimensions.width15*1.0666,right: Dimensions.width15*1.0666,),
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
                padding: EdgeInsets.symmetric(horizontal: Dimensions.height20),
                child: AppLayoutWidget(isColor: false, sections: 15,),
              ),
              *//*visa*//*
              Container(
                padding:  EdgeInsets.only(left: Dimensions.width15,right: Dimensions.width15,top: Dimensions.height20,bottom: Dimensions.height20),
                margin:  EdgeInsets.only(left: Dimensions.width15*1.0666,right: Dimensions.width15*1.0666,),
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
                            Gap(Dimensions.height5),
                            Text("Payment method",style: Styles.headLineStyle4.copyWith(color: Colors.grey.shade500),)
                          ],
                        ),
                        AppColumnLayout(first: "\$249.99", second: "Price",alignment: CrossAxisAlignment.end, isColor: false),
                      ],
                    )
                  ],
                ),
              ),
              *//*visa*//*
              SizedBox(height: 1,),
              *//*Barcode*//*
              Container(
                height: Dimensions.height45*2,
                margin: EdgeInsets.symmetric(horizontal: Dimensions.height15),
                padding: EdgeInsets.symmetric(vertical:Dimensions.width10),
                decoration:BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(Dimensions.height20),bottomRight: Radius.circular(Dimensions.height20))
                ) ,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: Dimensions.height15),
                  padding: EdgeInsets.symmetric(horizontal:Dimensions.height15/2),
                  decoration: BoxDecoration(

                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(Dimensions.height15),
                    child: BarcodeWidget(
                        data: 'https://www.linkedin.com/in/ahmed-maher-743915216/',
                        barcode: Barcode.code128(),
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,height: Dimensions.height50*1.4,
                    ),
                  ),
                ),
              ),
              *//*Barcode*//*
              Gap(Dimensions.height20),
              TicketView(ticket: ticketList[1], isColor: true),
              Gap(Dimensions.height10),
            ],
          ),
          Positioned(
            left: Dimensions.height10*2.3,
            top: Dimensions.height50*5.12,
            child: Container(
              padding: EdgeInsets.all(Dimensions.height5/1.6666),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor,width: Dimensions.height5/2.5),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
                right: Dimensions.height10*2.3,
                top: Dimensions.height50*5.12,
                child: Container(
                  padding: EdgeInsets.all(Dimensions.height5/1.6666),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor,width: Dimensions.height5/2.5),
                  ),
                  child: CircleAvatar(
                    maxRadius: 4,
                    backgroundColor: Styles.textColor,
                  ),
                ),
              ),
        ]*/

      ),
    );
  }
}
//
