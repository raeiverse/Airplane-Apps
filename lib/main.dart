import 'package:airplane/view/pages/bonus_page.dart';
import 'package:airplane/view/pages/checkout_page.dart';
import 'package:airplane/view/pages/choose_seat_page.dart';
import 'package:airplane/view/pages/detail_page.dart';
import 'package:airplane/view/pages/get_started.dart';
import 'package:airplane/view/pages/main_page.dart';
import 'package:airplane/view/pages/sign_up_page.dart';
import 'package:airplane/view/pages/splash_page.dart';
import 'package:airplane/view/pages/success_checkout_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStartedPage(),
        '/signup-page': (context) => SignUpPage(),
        '/bonus-page': (context) => BonusPage(),
        '/main-page': (context) => MainPage(),
        '/detail-page': (context) => DetailPage(),
        '/chooseseat-page': (context) => ChooseSeatPage(),
        '/checkout-page': (context) => CheckoutPage(),
        '/successcheckout-page': (context) => SuccessCheckoutPage(),
      },
    );
  }
}
