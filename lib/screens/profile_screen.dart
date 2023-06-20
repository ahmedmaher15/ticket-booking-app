import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../app_style.dart';

import '../../widgets/ticket_screen_widgets/column_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;

    double height5=screenHeight/174.2;
    double height10=screenHeight/78.1;
    double height15=screenHeight/52.06;
    double height20=screenHeight/39.05;
    double height25=screenHeight/31.24;
    double height45=screenHeight/17.35;
    double height50=screenHeight/15.62;
//dynamic width
    double width5=screenWidth/78.54;
    double width10=screenWidth/39.27;
    double width15=screenWidth/26.18;
    double width20=screenWidth/19.63;
    double width45=screenWidth/8.7;

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding:  EdgeInsets.symmetric(horizontal: height20,vertical: width20),
              children: [
                Gap(height45),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: screenHeight/8.67,
                      width: screenWidth/4.56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(height20),
                        image:const DecorationImage(image: AssetImage("assets/images/img_1.png")),
                      ),
                    ),
                    Gap(height10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Book Tickets",
                          style: TextStyle(fontSize:height20+height5,color: const Color(0xff3b3b3b),fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "New-York",
                          style: TextStyle(
                              fontSize: height15,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade500),
                        ),
                        Gap(height5),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(height45*2),
                              color: const Color(0xfffef4f3)
                          ),
                          padding:  EdgeInsets.symmetric(horizontal: height5,vertical: width5),
                          child: Row(
                            children: [
                              Container(
                                padding:  EdgeInsets.all(height5),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff526799)
                                ),
                                child:  Icon(FluentSystemIcons.ic_fluent_shield_filled,color: Colors.white,size: height15,),
                              ),
                              Gap(width5),
                              Text("Premium status",style: TextStyle(fontSize: height15, fontWeight: FontWeight.w600, color: const Color(0xff526799)),)
                            ],
                          ),
                        )
                      ],),
                    Gap(width10),
                    const Spacer(),
                    Column(
                      children: [
                        InkWell(
                            onTap: (){},
                            child: Text("Edit",style: TextStyle(fontSize: height20,color: const Color(0xff3b3b3b),fontWeight: FontWeight.w500).copyWith(color:Styles.primaryColor,fontWeight: FontWeight.w300  ),))
                      ],
                    ),

                  ],
                ),
                Gap(height5*1.5),
                Divider(color: Colors.grey.shade300,),
                Gap(height5*1.5),
                Stack(
                  children: [
                    Container(
                      height: height45*2,
                      decoration: BoxDecoration(
                        color: Styles.primaryColor,
                        borderRadius: BorderRadius.circular(height20),
                      ),
                    ),
                    Positioned(
                      top: -height45,
                      right: -width45,
                      child: Container(
                        padding:  EdgeInsets.all(height15*2),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(width:width20,color: const Color(0xff264cd2) )
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: height10+height5,vertical: width15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center ,
                        children: [
                          CircleAvatar(
                            maxRadius: height25,
                            backgroundColor: Colors.white,
                            child: Icon(
                              FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                              color: Styles.primaryColor,
                              size: height15*2,
                            ),
                          ),
                          Gap(width5),
                          Padding(
                            padding:  EdgeInsets.only(bottom: height10),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start ,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "you'v got a new award",
                                  style: TextStyle(fontSize: height20*1.05,color: const Color(0xff3b3b3b),fontWeight: FontWeight.bold).copyWith(fontSize:screenHeight/35.95,
                                      fontWeight: FontWeight.bold, color: Colors.white),
                                ),
                                Text(
                                  "you have 95 flights in a year",
                                  style: TextStyle(fontSize: height20*1.05,color: const Color(0xff3b3b3b),fontWeight: FontWeight.bold).copyWith(
                                      fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.8),fontSize: screenHeight/48.81),
                                ),
                              ],
                            ),

                          )
                        ],),
                    ),
                  ],
                ),
                Gap(height25),
                Text("Accumulated mailes",style: TextStyle(fontSize: height20*1.05,color: const Color(0xff3b3b3b),fontWeight: FontWeight.bold),),
                Gap(height15),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: height15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(height20),
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
                          Text("19802",style: TextStyle(fontSize:height20+height5,color: const Color(0xff3b3b3b),fontWeight: FontWeight.bold).copyWith(fontSize: height50+height5),),
                        ],
                      ),
                      Gap(width20),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Miles accrued",style: TextStyle(fontSize: height10*1.7,color: Colors.grey.shade500,fontWeight: FontWeight.w500),),
                              Text("23 May 2023",style: TextStyle(fontSize: height10*1.7,color: Colors.grey.shade500,fontWeight: FontWeight.w500),),
                            ],
                          ),
                          Gap(height20),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppColumnLayout(first: "23 042", second: "Miles", alignment: CrossAxisAlignment.start),
                              AppColumnLayout(first: "AirLine CO", second: "Received from", alignment: CrossAxisAlignment.end),
                            ],
                          ),
                          Gap(height20),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppColumnLayout(first: "24 ", second: "Miles", alignment: CrossAxisAlignment.start),
                              AppColumnLayout(first: "McDonal's", second: "Received from", alignment: CrossAxisAlignment.end),
                            ],
                          ),
                          Gap(height20),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppColumnLayout(first: "52 340", second: "Miles", alignment: CrossAxisAlignment.start),
                              AppColumnLayout(first: "Exuma", second: "Received from", alignment: CrossAxisAlignment.end),
                            ],
                          ),
                          Gap(height15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("How to get more miles",style: TextStyle(fontSize: height20,color: const Color(0xff3b3b3b),fontWeight: FontWeight.w500).copyWith(color: Styles.primaryColor),)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
