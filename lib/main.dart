import 'package:flutter/material.dart';
import 'package:project3/configration/app_routs.dart';
import 'package:project3/screens/Forgot_passwored.dart';
import 'package:project3/screens/buttomNavgion.dart';
import 'package:project3/screens/cart.dart';
import 'package:project3/screens/create_account.dart';
import 'package:project3/screens/home_screen.dart';
import 'package:project3/screens/login_screens.dart';
import 'package:project3/screens/order.dart';
import 'package:project3/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          AppRouts.splash: (context) => const SplashScreen(),
          AppRouts.home: (context) => const HomeScreen(),
          AppRouts.Login: (context) => const LoginScreens(),
          AppRouts.Create: (context) => const CreateAccount(),
          AppRouts.forget: (context) => const ForgetPasswored(),
          AppRouts.cart: (context) => const Cart(),
          AppRouts.order: (context) => const Order(),
          AppRouts.bouttom: (context) => const Buttomnavgion()
        },
        initialRoute: AppRouts.splash,
        theme: ThemeData(
            appBarTheme:
                const AppBarTheme(backgroundColor: Colors.white, elevation: 1),
            useMaterial3: false),
        home: SplashScreen());
  }
}
