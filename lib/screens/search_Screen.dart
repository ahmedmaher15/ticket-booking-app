import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/app_style.dart';
import 'package:ticketbookingapp/dimensions.dart';
import 'package:ticketbookingapp/widgets/search_screen_widgets/app_icon_text.dart';
import 'package:ticketbookingapp/widgets/ticket_screen_widgets/ticket_tab.dart';

import '../widgets/home_screen_widgets/view_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.height20, vertical: Dimensions.width20),
              children: [
                Gap(Dimensions.height20 * 2),
                Text(
                  "What are \nyou looking for",
                  style:
                      Styles.headLineStyle1.copyWith(fontSize: Dimensions.height30),
                ),
                Gap(Dimensions.height20),
                const AppTicketTab(text1: "AirLine tickets", text2: "Hotels"),
                Gap(Dimensions.height25),
                const AppIconWidget(
                  icon: Icons.flight_takeoff_rounded,
                  text: "Departure",
                ),
                Gap(Dimensions.height15),
                const AppIconWidget(
                  icon: Icons.flight_land_rounded,
                  text: "Arrival",
                ),
                Gap(Dimensions.height20),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: Dimensions.height50,
                    decoration: BoxDecoration(
                      color: const Color(0xd91130ce),
                      borderRadius: BorderRadius.circular(Dimensions.height15),
                    ),
                    child: Center(
                      child: Text(
                        "Find Tickets",
                        style: Styles.headLineStyle2.copyWith(
                            color: Colors.white, fontSize: Dimensions.height20),
                      ),
                    ),
                  ),
                ),
                Gap(Dimensions.height30),
                const ViewBar(text1: "Upcoming Flights", text2: "View All"),
                Gap(Dimensions.height30),
                Row(
                  children: [
                    Container(
                      padding:  EdgeInsets.all(Dimensions.radius15),
                      height: Dimensions.height50 * 7.8,
                      width: Dimensions.width50 * 3.2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(Dimensions.height15),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: .1,
                              spreadRadius: 1,
                              offset: Offset(0, 1))
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: Dimensions.height50 * 3.6,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Dimensions.height15),
                                image: const DecorationImage(
                                    image: AssetImage(
                                      "assets/images/sit.jpg",
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                          Gap(Dimensions.height10),
                         Text(
                            "20% discount\non business\nclass\nYickets from\n Airline on\nInternational",
                            style: TextStyle(fontSize: Dimensions.height20-Dimensions.height5/3,color: Color(0xff3b3b3b),fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    Gap(Dimensions.height15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: Dimensions.height50 * 4.1,
                              width: Dimensions.width50 * 3.4,
                              padding: EdgeInsets.symmetric(
                                  horizontal: Dimensions.height10,
                                  vertical: Dimensions.width15),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Dimensions.height20),
                                  color: const Color(0xff3ab8b8)),
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
                                  Gap(Dimensions.height10),
                                  Text(
                                    "Take the survey about services and get  discount ",
                                    style: Styles.headLineStyle2.copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontSize: Dimensions.height10 * 1.8),
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              top: -Dimensions.height45,
                              right: -Dimensions.width45,
                              child: Container(
                                padding: EdgeInsets.all(Dimensions.height30),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: Dimensions.height10 * 1.8,
                                    color: const Color(0xff189999),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Gap(Dimensions.height15),
                        Container(
                          height: Dimensions.height50 * 3.6,
                          width: Dimensions.width50 * 3.4,
                          padding: EdgeInsets.symmetric(
                              vertical: Dimensions.width15,
                              horizontal: Dimensions.height15),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimensions.height20),
                              color: const Color(0xffec6545)),
                          child: Column(
                            children: [
                              Text(
                                "Take Love",
                                style: Styles.headLineStyle2.copyWith(
                                    color: Colors.white, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Gap(Dimensions.height20),
                              Row(
                                children: [
                                  FittedBox(
                                    child: RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text: '😍',
                                          style: TextStyle(
                                              fontSize: Dimensions.height30)),
                                      TextSpan(
                                          text: '🥰',
                                          style: TextStyle(
                                              fontSize: Dimensions.height20*2)),
                                      TextSpan(
                                          text: '😘',
                                          style: TextStyle(
                                              fontSize: Dimensions.height30))
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
          ),
        ],
      ),
    );
  }
}
