import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/view/pages/bonus_page.dart';
import 'package:airplane/view/pages/checkout_page.dart';
import 'package:airplane/view/pages/choose_seat_page.dart';
import 'package:airplane/view/pages/detail_page.dart';
import 'package:airplane/view/pages/get_started.dart';
import 'package:airplane/view/pages/main_page.dart';
import 'package:airplane/view/pages/sign_up_page.dart';
import 'package:airplane/view/pages/splash_page.dart';
import 'package:airplane/view/pages/success_checkout_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: MaterialApp(
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
      ),
    );
  }
}
