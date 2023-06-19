import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/app_style.dart';
import 'package:ticketbookingapp/dimensions.dart';

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
        borderRadius: BorderRadius.circular(Dimensions.height25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade900,
            blurRadius: 1.5,
            spreadRadius: .5,
            offset: Offset(0,1)
          )
        ]
      ),
      margin: EdgeInsets.only(right: Dimensions.width15*1.133,top: Dimensions.height5),
      width:Dimensions.width50*4.4,
      height: Dimensions.height50*6.2,
      padding: EdgeInsets.symmetric(horizontal: Dimensions.height15,vertical:Dimensions.width20/1.666 ),
      child: Column(
        children: [
          Container(
            height: Dimensions.height50*3.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.height20),
              color: Styles.primaryColor,
              image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover)
            ),
          ),
          Gap(Dimensions.height10),
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
