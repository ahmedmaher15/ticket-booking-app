import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/app_style.dart';
import 'package:ticketbookingapp/dimensions.dart';
import 'package:ticketbookingapp/widgets/home_screen_widgets/app_info_lists.dart';
import 'package:ticketbookingapp/widgets/home_screen_widgets/hotels.dart';
import 'package:ticketbookingapp/widgets/home_screen_widgets/ticket_view.dart';
import 'package:ticketbookingapp/widgets/home_screen_widgets/view_bar.dart';

class HomeScreen extends StatelessWidget {
  const  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

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
                     padding:   EdgeInsets.only(top:Dimensions.height45,left: Dimensions.width15,right: Dimensions.width15),
                     child: Column(
                       children: [
                         Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text("Good Morning",style:Styles.headLineStyle3 ,),
                                   const Gap(5),
                                   Text("Book Tickets",style: Styles.headLineStyle1,),
                                 ],
                               ),
                               Container(
                                 width: Dimensions.width50,
                                 height: Dimensions.height50,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(Dimensions.height10),
                                   image:const DecorationImage(
                                     image:  AssetImage("assets/images/img_1.png"),
                                     fit: BoxFit.cover
                                   )
                                 ),
                               )
                             ],
                           ),

                          Gap(Dimensions.width15),

                            Container(
                              height: Dimensions.height20*3,
                             padding:  EdgeInsets.symmetric(horizontal: Dimensions.screenHeight/56.08,vertical: Dimensions.screenWidth/32.72),
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(Dimensions.screenHeight/56.08)),
                                color: const Color(0xfff4f6fd)
                              ),
                              child: Row(
                                children: [
                                   Padding(
                                    padding: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
                                    child: Icon(Icons.search,size: Dimensions.height30+Dimensions.height5,),
                                  ),
                                  Text("search",style: Styles.headLineStyle3,)
                                ],
                              ),
                            ),
                          Gap(Dimensions.width15),
                         ViewBar(text1:"Upcoming Flights" , text2:"View All" )
                       ],
                     ),

                    ),
                   Gap(Dimensions.height15),
                   SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: Dimensions.width20,),
                      child: Row(
                        children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket,isColor: true,)).toList(),

                      )),
                   Gap(Dimensions.height15),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: Dimensions.height20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Hotels",style: Styles.headLineStyle2,),
                        InkWell(
                            onTap: (){},
                            child: Text("View All",style: Styles.textStyle.copyWith(color: Styles.primaryColor),)),
                      ],

                    ),
                  ),
                   Gap(Dimensions.height15),
                   SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        padding: EdgeInsets.only(bottom: Dimensions.height15),
                        child: Row(
                          children: [
                            HotelScreen(image: 'assets/images/one.png', first: 'Open Space', scound: 'London', third: '\$25/night',),
                            HotelScreen(image: 'assets/images/two.png', first: 'Global Will', scound: 'London', third: '\$25/night',),
                            HotelScreen(image: 'assets/images/three.png', first: 'Tallest Building', scound: 'London', third: '\$25/night',),

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