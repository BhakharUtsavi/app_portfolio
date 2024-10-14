
import 'package:flutter/material.dart';
import 'package:app_portfolio/screens/aboutpage.dart';
import 'package:app_portfolio/screens/contactpage.dart';
import 'package:app_portfolio/screens/homepage.dart';
import 'package:app_portfolio/screens/portfolio.dart';
import 'package:app_portfolio/screens/servicepage.dart';

void  main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context){
          return HomePage();
        },
        "about":(context){
          return AboutPage();
        },
        "services":(context){
          return ServicesPage();
        },
        "portfolio":(context){
          return PortfolioPage();
        },
        "contact":(context){
          return ContactPage();
        },
      },
    ),
  );
}