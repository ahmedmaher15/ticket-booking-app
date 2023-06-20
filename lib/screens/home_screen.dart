import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../app_style.dart';

import '../../widgets/home_screen_widgets/app_info_lists.dart';
import '../../widgets/home_screen_widgets/hotels.dart';
import '../../widgets/home_screen_widgets/ticket_view.dart';
import '../../widgets/home_screen_widgets/view_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    double height5 = screenHeight / 174.2;
    double height10 = screenHeight / 78.1;
    double height15 = screenHeight / 52.06;
    double height20 = screenHeight / 39.05;
    double height30 = screenHeight / 26.03;
    double height45 = screenHeight / 17.35;
    double height50 = screenHeight / 15.62;
//dynamic width
    double width10 = screenWidth / 39.27;
    double width15 = screenWidth / 26.18;
    double width20 = screenWidth / 19.63;
    double width50 = screenWidth / 7.8;
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body:  Column(
          children: [
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: height45, left: width15, right: width15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Good Morning",
                                  style: TextStyle(
                                      fontSize: height10 * 1.7,
                                      color: Colors.grey.shade500,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Gap(5),
                                Text(
                                  "Book Tickets",
                                  style: TextStyle(
                                      fontSize: height20 + height5,
                                      color: const Color(0xff3b3b3b),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Container(
                              width: width50,
                              height: height50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(height10),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage("assets/images/img_1.png"),
                                      fit: BoxFit.cover)),
                            )
                          ],
                        ),
                        Gap(width15),
                        Container(
                          height: height20 * 3,
                          padding: EdgeInsets.symmetric(
                              horizontal: screenHeight / 56.08,
                              vertical: screenWidth / 32.72),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(screenHeight / 56.08)),
                              color: const Color(0xfff4f6fd)),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: width10, right: width10),
                                child: Icon(
                                  Icons.search,
                                  size: height30 + height5,
                                ),
                              ),
                              Text(
                                "search",
                                style: TextStyle(
                                    fontSize: height10 * 1.7,
                                    color: Colors.grey.shade500,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        Gap(width15),
                        const ViewBar(
                            text1: "Upcoming Flights", text2: "View All")
                      ],
                    ),
                  ),
                  Gap(height15),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(
                        left: width20,
                      ),
                      child: Row(
                        children: ticketList
                            .map((singleTicket) => TicketView(
                                  ticket: singleTicket,
                                  isColor: true,
                                ))
                            .toList(),
                      )),
                  Gap(height15),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: height20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hotels",
                          style: TextStyle(
                              fontSize: height20 * 1.05,
                              color: const Color(0xff3b3b3b),
                              fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                            onTap: () {},
                            child: Text(
                              "View All",
                              style: TextStyle(
                                      fontSize: height20,
                                      color: const Color(0xff3b3b3b),
                                      fontWeight: FontWeight.w500)
                                  .copyWith(color: Styles.primaryColor),
                            )),
                      ],
                    ),
                  ),
                  Gap(height15),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        padding: EdgeInsets.only(bottom: height15),
                        child: const Row(
                          children: [
                            HotelScreen(
                              image: 'assets/images/one.png',
                              first: 'Open Space',
                              scound: 'London',
                              third: '\$25/night',
                            ),
                            HotelScreen(
                              image: 'assets/images/two.png',
                              first: 'Global Will',
                              scound: 'London',
                              third: '\$25/night',
                            ),
                            HotelScreen(
                              image: 'assets/images/three.png',
                              first: 'Tallest Building',
                              scound: 'London',
                              third: '\$25/night',
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),

    );
  }
}
