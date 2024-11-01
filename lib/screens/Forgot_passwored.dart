import 'package:flutter/material.dart';
import 'package:project3/configration/app_routs.dart';
import 'package:project3/custem_widget/image_page.dart';
import 'package:project3/custem_widget/login_bottom.dart';
import 'package:project3/custem_widget/text_colum.dart';
import 'package:project3/custem_widget/text_filed.dart';

class ForgetPasswored extends StatelessWidget {
  const ForgetPasswored({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ImagePage(
            svg: "assets/icons/back.svg",
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextColum(
                  text1: "Forgot Password",
                  text2:
                      "We’ll Send the link to the email you’ll provide below",
                ),
                const SizedBox(height: 24),
                TextFiled(hintText: "Email Address"),
                SizedBox(height: 24),
                LoginBottom(
                  text: "Send the reset link",
                  ontap: () {
                    Navigator.pushNamed(context, AppRouts.bouttom);
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
