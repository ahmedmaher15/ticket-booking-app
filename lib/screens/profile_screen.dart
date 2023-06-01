import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/app_style.dart';
import 'package:ticketbookingapp/widgets/ticket_screen_widgets/column_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(

        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        children: [
          const Gap(40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 90,
                width: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image:const DecorationImage(image: AssetImage("assets/images/img_1.png")),
                ),
              ),
              const Gap(10),
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
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  const Gap(6),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xfffef4f3)
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 3),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                              color: Color(0xff526799)
                          ),
                          child: const Icon(FluentSystemIcons.ic_fluent_shield_filled,color: Colors.white,size: 15,),
                        ),
                        const Gap(5),
                        const Text("Premium stutus",style: TextStyle( fontWeight: FontWeight.w600, color: Color(0xff526799)),)
                      ],
                    ),
                  )
                ],),
              const Gap(10),
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
          const Gap(8),
          Divider(color: Colors.grey.shade300,),
          const Gap(8),
          Stack(
            children: [
              Container(
                height: 90,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(18),

                ),
              ),
              Positioned(
                top: -45,
                right: -45,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(width:18,color: const Color(0xff264cd2) )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 14),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center ,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 30,
                      ),
                    ),
                    const Gap(12),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: FittedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start ,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "you'v got a new award",
                              style: Styles.headLineStyle2.copyWith(fontSize:23,
                                  fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                            Text(
                              "you have 95 flights in a year",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.8),fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    )
                ],),
              ),
            ],
          ),
          const Gap(25),
          Text("Accumulated mailes",style: Styles.headLineStyle2,),
          const Gap(13),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
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
                    Text("19802",style: Styles.headLineStyle1.copyWith(fontSize: 55),),
                  ],
                ),
                const Gap(20),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Miles accrued",style: Styles.headLineStyle3,),
                        Text("23 May 2023",style: Styles.headLineStyle3,),
                      ],
                    ),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(first: "23 042", second: "Miles", alignment: CrossAxisAlignment.start),
                        AppColumnLayout(first: "AirLine CO", second: "Received from", alignment: CrossAxisAlignment.end),
                      ],
                    ),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(first: "24 ", second: "Miles", alignment: CrossAxisAlignment.start),
                        AppColumnLayout(first: "McDonal's", second: "Received from", alignment: CrossAxisAlignment.end),
                      ],
                    ),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(first: "52 340", second: "Miles", alignment: CrossAxisAlignment.start),
                        AppColumnLayout(first: "Exuma", second: "Received from", alignment: CrossAxisAlignment.end),
                      ],
                    ),
                    Gap(15),
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
    );
  }
}
