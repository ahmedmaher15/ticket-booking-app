import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticketbookingapp/app_style.dart';
import 'package:ticketbookingapp/widgets/bootom_bar.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyBottomBar(),
    );
  }
}

