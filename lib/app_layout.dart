import 'package:flutter/material.dart';
import 'package:get/get.dart';
class AppLayout{
  static getScreenHeight(){
    return Get.height;
}
static getScreenWidth(){
    return Get.width;
}
static getHeight (double pxiels){
    double x=getScreenHeight()/pxiels;
    return getScreenHeight()/pxiels;
}
  static getwidth (double pxiels){
    double x=getScreenHeight()/pxiels;
    return getScreenWidth()/pxiels;
  }
}