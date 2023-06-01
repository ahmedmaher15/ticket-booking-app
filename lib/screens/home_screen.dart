import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/app_style.dart';
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
      body: ListView(
        children: [
           Padding(
             padding:  const EdgeInsets.only(top:42,left: 14,right: 14),
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
                         width: 50,
                         height: 50,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           image:const DecorationImage(
                             image:  AssetImage("assets/images/img_1.png"),
                             fit: BoxFit.cover
                           )
                         ),
                       )
                     ],
                   ),

                 const Gap(15),

                    Container(
                     padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Color(0xfff4f6fd)
                      ),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 8, right: 10),
                            child: Icon(Icons.search),
                          ),
                          Text("search",style: Styles.headLineStyle3,)
                        ],
                      ),
                    ),
                 const Gap(15),
                 ViewBar(text1:"Upcoming Flights" , text2:"View All" )
               ],
             ),

            ),
          const Gap(15),
           SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20,),
              child: Row(
                children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket,isColor: true,)).toList(),

              )),
          const Gap(15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
          const Gap(15),
          const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HotelScreen(image: 'assets/images/one.png', first: 'Open Space', scound: 'London', third: '\$25/night',),
                  HotelScreen(image: 'assets/images/two.png', first: 'Global Will', scound: 'London', third: '\$25/night',),
                  HotelScreen(image: 'assets/images/three.png', first: 'Tallest Building', scound: 'London', third: '\$25/night',),

                ],
              )),
        ],
      ),
    );
  }
}