import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/app_style.dart';
import 'package:ticketbookingapp/dimensions.dart';
import 'package:ticketbookingapp/widgets/ticket_screen_widgets/column_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Column(
        children: [
         ListView(
              padding:  EdgeInsets.symmetric(horizontal: Dimensions.height20,vertical: Dimensions.width20),
              children: [
                 Gap(Dimensions.height45),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: Dimensions.screenHeight/8.67,
                      width: Dimensions.screenWidth/4.56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.height20),
                        image:const DecorationImage(image: AssetImage("assets/images/img_1.png")),
                      ),
                    ),
                     Gap(Dimensions.height10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Book Tickets",
                          style: Styles.headLineStyle1,
                        ),
                        Text(
                          "New-York",
                          style: TextStyle(
                              fontSize: Dimensions.font16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade500),
                        ),
                         Gap(Dimensions.height5),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.height45*2),
                            color: const Color(0xfffef4f3)
                          ),
                          padding:  EdgeInsets.symmetric(horizontal: Dimensions.height5,vertical: Dimensions.width5),
                          child: Row(
                            children: [
                              Container(
                                padding:  EdgeInsets.all(Dimensions.height5),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                    color: Color(0xff526799)
                                ),
                                child:  Icon(Icons.shield,color: Colors.white,size: Dimensions.height15,),
                              ),
                               Gap(Dimensions.width5),
                               Text("Premium status",style: TextStyle(fontSize: Dimensions.height15, fontWeight: FontWeight.w600, color: Color(0xff526799)),)
                            ],
                          ),
                        )
                      ],),
                     Gap(Dimensions.width10),
                    const Spacer(),
                    Column(
                      children: [
                        InkWell(
                            onTap: (){},
                            child: Text("Edit",style: Styles.textStyle.copyWith(color:Styles.primaryColor,fontWeight: FontWeight.w300  ),))
                      ],
                    ),

                  ],
                ),
                 Gap(Dimensions.height5*1.5),
                Divider(color: Colors.grey.shade300,),
                 Gap(Dimensions.height5*1.5),
                Stack(
                  children: [
                    Container(
                      height: Dimensions.height45*2,
                      decoration: BoxDecoration(
                        color: Styles.primaryColor,
                        borderRadius: BorderRadius.circular(Dimensions.height20),
                      ),
                    ),
                    Positioned(
                      top: -Dimensions.height45,
                      right: -Dimensions.width45,
                      child: Container(
                        padding:  EdgeInsets.all(Dimensions.height15*2),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(width:Dimensions.width20,color: const Color(0xff264cd2) )
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: Dimensions.height10+Dimensions.height5,vertical: Dimensions.width15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center ,
                        children: [
                          CircleAvatar(
                            maxRadius: Dimensions.height25,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.lightbulb_outline_rounded,
                              color: Styles.primaryColor,
                              size: Dimensions.height15*2,
                            ),
                          ),
                           Gap(Dimensions.width5),
                          Padding(
                            padding:  EdgeInsets.only(bottom: Dimensions.height10),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start ,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "you'v got a new award",
                                    style: Styles.headLineStyle2.copyWith(fontSize:Dimensions.screenHeight/35.95,
                                        fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                  Text(
                                    "you have 95 flights in a year",
                                    style: Styles.headLineStyle2.copyWith(
                                        fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.8),fontSize: Dimensions.screenHeight/48.81),
                                  ),
                                ],
                              ),

                          )
                      ],),
                    ),
                  ],
                ),
                 Gap(Dimensions.height25),
                Text("Accumulated mailes",style: Styles.headLineStyle2,),
                 Gap(Dimensions.height15),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.height15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Styles.bgColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1
                      )
                    ]
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("19802",style: Styles.headLineStyle1.copyWith(fontSize: Dimensions.height50+Dimensions.height5),),
                        ],
                      ),
                       Gap(Dimensions.width20),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Miles accrued",style: Styles.headLineStyle3,),
                              Text("23 May 2023",style: Styles.headLineStyle3,),
                            ],
                          ),
                          Gap(Dimensions.height20),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppColumnLayout(first: "23 042", second: "Miles", alignment: CrossAxisAlignment.start),
                              AppColumnLayout(first: "AirLine CO", second: "Received from", alignment: CrossAxisAlignment.end),
                            ],
                          ),
                          Gap(Dimensions.height20),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppColumnLayout(first: "24 ", second: "Miles", alignment: CrossAxisAlignment.start),
                              AppColumnLayout(first: "McDonal's", second: "Received from", alignment: CrossAxisAlignment.end),
                            ],
                          ),
                          Gap(Dimensions.height20),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppColumnLayout(first: "52 340", second: "Miles", alignment: CrossAxisAlignment.start),
                              AppColumnLayout(first: "Exuma", second: "Received from", alignment: CrossAxisAlignment.end),
                            ],
                          ),
                          Gap(Dimensions.height15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("How to get more miles",style: Styles.textStyle.copyWith(color: Styles.primaryColor),)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )

              ],
            ),

        ],
      ),
    );
  }
}
