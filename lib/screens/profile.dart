import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project3/configration/app_routs.dart';
import 'package:project3/custem_widget/builed_profile.dart';
import 'package:project3/custem_widget/export_profile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Profile",
              style: TextStyle(
                  color: Color(0xff1F1F1F),
                  fontFamily: "Poppins",
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/seting.svg")),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ExportProfile(),
              SizedBox(height: 30),
              Container(
                width: 349,
                height: 114,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/image.png"),
                      fit: BoxFit.cover),
                ),
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Last Charged : 01-01-2023",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffFFFFFF)),
                            ),
                            Text(
                              "Your Wallet",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontFamily: "Poppins",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "280,00AED",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  fontFamily: "Poppins"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset("assets/icons/mange.svg"),
                            ),
                            Text(
                              "Manage",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Poppins",
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ItemProfile(),
              Divider(),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRouts.order);
                      },
                      icon: SvgPicture.asset("assets/icons/logout.svg")),
                  Text(
                    "Logout",
                    style: TextStyle(
                      color: Color(0xffF16063),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
