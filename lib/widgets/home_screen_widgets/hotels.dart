import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../app_style.dart';


class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key, required this.image, required this.first, required this.scound, required this.third}) : super(key: key);
  final String image;
  final String first;
  final String scound;
  final String third;

  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;

    double height5=screenHeight/174.2;
    double height10=screenHeight/78.1;
    double height15=screenHeight/52.06;
    double height20=screenHeight/39.05;
    double height25=screenHeight/31.24;

    double height50=screenHeight/15.62;
//dynamic width
    double width15=screenWidth/26.18;
    double width20=screenWidth/19.63;

    double width50=screenWidth/7.8;
    return Container(
      decoration: BoxDecoration(
          color:  Colors.white,
          borderRadius: BorderRadius.circular(height25),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade900,
                blurRadius: 1.5,
                spreadRadius: .5,
                offset: const Offset(0,1)
            )
          ]
      ),
      margin: EdgeInsets.only(right: width15*1.133,top: height5),
      width:width50*4.4,
      height: height50*6.2,
      padding: EdgeInsets.symmetric(horizontal: height15,vertical:width20/1.666 ),
      child: Column(
        children: [
          Container(
            height: height50*3.6,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(height20),
                color: Styles.primaryColor,
                image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover)
            ),
          ),
          Gap(height10),
          Row(
            children: [
              Text(first,style:TextStyle(fontSize: height20*1.05,color: const Color(0xff3b3b3b),fontWeight: FontWeight.bold),),
            ],
          ),
          Row(
            children: [
              Text(scound,style: TextStyle(fontSize: height10*1.4,color: Colors.grey.shade500,fontWeight: FontWeight.w500),),
            ],
          ),
          Row(
            children: [
              Text(third,style: TextStyle(fontSize: height20*1.05,color: const Color(0xff3b3b3b),fontWeight: FontWeight.bold),),
            ],
          )
        ],
      ),
    );
  }
}
