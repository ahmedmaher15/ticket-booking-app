import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../app_style.dart';
import '../../widgets/search_screen_widgets/app_icon_text.dart';
import '../../widgets/ticket_screen_widgets/ticket_tab.dart';

import '../widgets/home_screen_widgets/view_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;

    double height5=screenHeight/174.2;
    double height10=screenHeight/78.1;
    double height15=screenHeight/52.06;
    double height20=screenHeight/39.05;
    double height25=screenHeight/31.24;
    double height30=screenHeight/26.03;
    double height45=screenHeight/17.35;
    double height50=screenHeight/15.62;
//dynamic width
    double width15=screenWidth/26.18;
    double width20=screenWidth/19.63;
    double width45=screenWidth/8.7;
    double width50=screenWidth/7.8;
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: height20, vertical: width20),
              children: [
                Gap(height20 * 2),
                Text(
                  "What are \nyou looking for",
                  style:
                  TextStyle(fontSize:height20+height5,color: const Color(0xff3b3b3b),fontWeight: FontWeight.bold).copyWith(fontSize: height30),
                ),
                Gap(height20),
                const AppTicketTab(text1: "AirLine tickets", text2: "Hotels"),
                Gap(height25),
                const AppIconWidget(
                  icon: Icons.flight_takeoff_rounded,
                  text: "Departure",
                ),
                Gap(height15),
                const AppIconWidget(
                  icon: Icons.flight_land_rounded,
                  text: "Arrival",
                ),
                Gap(height20),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: height50,
                    decoration: BoxDecoration(
                      color: const Color(0xd91130ce),
                      borderRadius: BorderRadius.circular(height15),
                    ),
                    child: Center(
                      child: Text(
                        "Find Tickets",
                        style: TextStyle(fontSize: height20*1.05,color: const Color(0xff3b3b3b),fontWeight: FontWeight.bold).copyWith(
                            color: Colors.white, fontSize: height20),
                      ),
                    ),
                  ),
                ),
                Gap(height30),
                const ViewBar(text1: "Upcoming Flights", text2: "View All"),
                Gap(height30),
                Row(
                  children: [
                    Container(
                      padding:  EdgeInsets.all(height15),
                      height: height50 * 7.8,
                      width: width50 * 3.2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(height15),
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
                            height: height50 * 3.6,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(height15),
                                image: const DecorationImage(
                                    image: AssetImage(
                                      "assets/images/sit.jpg",
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                          Gap(height10),
                          Text(
                            "20% discount\non business\nclass\nYickets from\n Airline on\nInternational",
                            style: TextStyle(fontSize: height20-height5/3,color: const Color(0xff3b3b3b),fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    Gap(height15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: height50 * 4.1,
                              width: width50 * 3.4,
                              padding: EdgeInsets.symmetric(
                                  horizontal: height10,
                                  vertical: width15),
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(height20),
                                  color: const Color(0xff3ab8b8)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Discount\nfor survey",
                                    style: TextStyle(fontSize: height20*1.05,color: const Color(0xff3b3b3b),fontWeight: FontWeight.bold).copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Gap(height10),
                                  Text(
                                    "Take the survey about services and get  discount ",
                                    style:TextStyle(fontSize: height20*1.05,color: const Color(0xff3b3b3b),fontWeight: FontWeight.bold).copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontSize: height10 * 1.8),
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              top: -height45,
                              right: -width45,
                              child: Container(
                                padding: EdgeInsets.all(height30),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: height10 * 1.8,
                                    color: const Color(0xff189999),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Gap(height15),
                        Container(
                          height: height50 * 3.6,
                          width: width50 * 3.4,
                          padding: EdgeInsets.symmetric(
                              vertical: width15,
                              horizontal: height15),
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(height20),
                              color: const Color(0xffec6545)),
                          child: Column(
                            children: [
                              Text(
                                "Take Love",
                                style: TextStyle(fontSize: height20*1.05,color: const Color(0xff3b3b3b),fontWeight: FontWeight.bold).copyWith(
                                    color: Colors.white, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Gap(height20),
                              Row(
                                children: [
                                  FittedBox(
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: '😍',
                                              style: TextStyle(
                                                  fontSize: height30)),
                                          TextSpan(
                                              text: '🥰',
                                              style: TextStyle(
                                                  fontSize: height20*2)),
                                          TextSpan(
                                              text: '😘',
                                              style: TextStyle(
                                                  fontSize: height30))
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
