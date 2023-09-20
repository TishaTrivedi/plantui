

import 'package:flutter/material.dart';
import 'package:plantui/screens/Home.dart';
import 'package:plantui/screens/bottomnavigate.dart';
import 'package:plantui/screens/cart.dart';
import 'package:plantui/screens/checkout.dart';
import 'package:plantui/screens/descpage.dart';
import 'package:plantui/screens/fertilizers.dart';
import 'package:plantui/screens/login.dart';
import 'package:plantui/screens/payment.dart';
import 'package:plantui/screens/plants.dart';
import 'package:plantui/screens/soil.dart';
import 'package:plantui/screens/tabView.dart';
import 'package:plantui/screens/tools.dart';
import 'package:plantui/screens/wishlist.dart';
import 'package:plantui/screens/zodiac.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute:'login',
    // 'bottomnavigation',
    routes: {
      'login':(context)=>Login(),
      'Home':(context)=>HomePage(),
      'bottomnavigation':(context)=>BottomNavigation(),
      '/plants':(context)=>Plants(),
      '/fertilizers':(context)=>Fertilizers(),
      '/soil':(context)=>Soil(),
      '/tools':(context)=>Tools(),
      'descpage':(context)=>DescPage(),
      'wishlist':(context)=>WishList(),
      'tabview':(context)=>TabView(),
      'zodiac':(context)=>Zodiac(),
      'cart':(context)=>ShoppingCart(),
      'checkout':(context)=>Checkout(),
      'payment':(context)=>Payment(),


    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


