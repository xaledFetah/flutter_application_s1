import 'package:flutter/material.dart';
import 'package:flutter_application_s1/class_horizental_card.dart';
import 'package:flutter_application_s1/home_page.dart';
import 'package:flutter_application_s1/page13_categories.dart';
import 'package:flutter_application_s1/page14_catigoreis_sub_details.dart';
import 'package:flutter_application_s1/page_9.dart';
import 'package:auto_size_text/auto_size_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      routes: {
        "home": (context) => Home_p(),
        "page_9": (context) => Page_9(),
        "page_13": (context) => Page_13(),
        "page_14": (context) => CatSubDet(),
      },
      home: Home_p(),
    );
  }
}
