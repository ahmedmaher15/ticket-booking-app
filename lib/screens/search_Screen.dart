import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/app_layout.dart';
import 'package:ticketbookingapp/app_style.dart';
import 'package:ticketbookingapp/widgets/search_screen_widgets/app_icon_text.dart';
import 'package:ticketbookingapp/widgets/ticket_screen_widgets/ticket_tab.dart';

import '../widgets/home_screen_widgets/view_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hight=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getwidth(20),vertical: AppLayout.getHeight(20)),
        children: [
          Gap(40),
          Text("What are \nyou looking for",style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getHeight(25)),),
          Gap(20),
          AppTicketTab(text1: "AirLine tickets", text2: "Hotels"),
          Gap(25),
          AppIconWidget(icon: Icons.flight_takeoff_rounded, text: "Departure",),
          Gap(15),
          AppIconWidget(icon: Icons.flight_land_rounded, text: "Arrival",),
          Gap(20),
          GestureDetector(
            onTap: (){},
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xd91130ce),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text("Find Tickets",style: Styles.headLineStyle2.copyWith(color: Colors.white,fontSize: 20),),
              ),
            ),
          ),
          Gap(30),
          ViewBar(text1:"Upcoming Flights" , text2:"View All" ),
          Gap(30),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                height: 390,
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: .1,
                      spreadRadius: 1,
                      offset: Offset(0,1)
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                        image: AssetImage("assets/images/sit.jpg",),fit: BoxFit.cover
                      )),
                    ),
                    Gap(10),
                    FittedBox(
                        child: Text(
                      "20% discount\non business\nclass\nYickets from\n Airline on\nInternational",
                      style: Styles.textStyle.copyWith(fontSize: 20),
                    ))
                  ],
                ),
              ),
              Gap(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 170,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Color(0xff3ab8b8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(10),
                            Text(
                              "Take the survey about services and get  discount ",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: -45,
                        right: -45,
                        child: Container(
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 18,
                              color: Color(0xff189999),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(15),
                  Container(
                    height: 180,
                    width: 170,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color(0xffec6545)),
                    child: Column(
                      children: [
                        Text(
                          "Take Love",
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(20),
                        Row(
                          children: [
                            FittedBox(
                              child: RichText(text: TextSpan(children: [
                                TextSpan(
                                  text: '😍',
                                  style: TextStyle(fontSize: 30)
                                ),
                                TextSpan(
                                    text: '🥰',
                                    style: TextStyle(fontSize: 45)
                                ),
                                TextSpan(
                                    text: '😘',
                                    style: TextStyle(fontSize: 30)
                                )
                              ])),
                            ),
                          ],
                        )
                      ],
                    ),
                  )


                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
