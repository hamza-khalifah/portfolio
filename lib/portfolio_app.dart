import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamaza_portfolio/pages/home_page.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hamza Portfolio',
      theme:
          ThemeData(primarySwatch: Colors.blue, brightness: Brightness.light),
      home: const HomePage(),
    );
  }
}
