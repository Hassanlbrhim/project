import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project3/configration/app_routs.dart';

import 'package:project3/configration/app_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacementNamed(context, AppRouts.Login);
    });

    timer = Timer.periodic(
      Duration(seconds: 2),
      (timer) {
        if (width == 130) {
          setState(() {
            width = 150;
            height = 180;
          });
        } else {
          setState(() {
            width = 130;
            height = 154;
          });
        }
      },
    );
    super.initState();
  }

  double width = 130;
  double height = 154;
  late Timer timer;
  @override
  dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Center(
            child: AnimatedContainer(
          width: width,
          height: height,
          duration: Duration(seconds: 0),
          child: Image.asset(
            "assets/images/Frame 2.png",
            width: 131,
            height: 153,
          ),
        )),
        Positioned(
          left: 0,
          right: 0,
          bottom: 85,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Richdiets 2023",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.primerycolor),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
