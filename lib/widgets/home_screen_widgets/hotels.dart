import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/app_style.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key, required this.image, required this.first, required this.scound, required this.third}) : super(key: key);
  final String image;
  final String first;
  final String scound;
  final String third;

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color:  Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade900,
            blurRadius: 1.5,
            spreadRadius: .5,
            offset: Offset(0,1)
          )
        ]
      ),
      margin: EdgeInsets.only(right: 17,top: 5),
      width: width*0.6,
      height: 310,
      padding: EdgeInsets.symmetric(horizontal: 15,vertical:17 ),
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Styles.primaryColor,
              image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover)
            ),
          ),
          Gap(10),
          Row(
            children: [
              Text(first,style: Styles.headLineStyle2,),
            ],
          ),
          Row(
            children: [
              Text(scound,style: Styles.headLineStyle4,),
            ],
          ),
          Row(
            children: [
              Text(third,style: Styles.headLineStyle2,),
            ],
          )
        ],
      ),
    );
  }
}
