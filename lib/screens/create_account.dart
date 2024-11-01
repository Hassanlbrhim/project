import 'package:flutter/material.dart';
import 'package:project3/configration/app_routs.dart';
import 'package:project3/configration/app_theme.dart';
import 'package:project3/custem_widget/image_page.dart';
import 'package:project3/custem_widget/login_bottom.dart';
import 'package:project3/custem_widget/login_row.dart';
import 'package:project3/custem_widget/or_dvider.dart';
import 'package:project3/custem_widget/text_colum.dart';
import 'package:project3/custem_widget/text_filed.dart';
import 'package:project3/custem_widget/text_rich.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImagePage(
              svg: "assets/icons/closing.svg",
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextColum(
                      text1: "Create New Account",
                      text2: "Have a healthy & Tasty day ahead"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LoginRow(
                          text: "Facebook",
                          textcolor: Color(0xff3B5998),
                          imagepath: "assets/images/facebook 1.png",
                          ContinarColor: Color(0xff3B59981A)),
                      SizedBox(
                        width: 16,
                      ),
                      LoginRow(
                        text: "Google",
                        textcolor: AppTheme.primerycolor,
                        imagepath: "assets/images/Group.png",
                        ContinarColor: Color(0xff31AA521A),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  OrDvider(),
                  SizedBox(height: 24),
                  TextFiled(hintText: "Full Name"),
                  SizedBox(height: 16),
                  TextFiled(
                    hintText: "Email Address",
                  ),
                  SizedBox(height: 16),
                  TextFiled(
                    hintText: "Password",
                    icons: Icon(
                      Icons.visibility,
                      color: AppTheme.primerycolor,
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 16),
                  TextFiled(
                    hintText: "Confirm Password",
                    icons: Icon(
                      Icons.visibility,
                      color: AppTheme.primerycolor,
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 16),
                  TextFiled(hintText: "Enter referral code (Optional)"),
                  SizedBox(height: 24),
                  Row(
                    children: [
                      CustomCheckbox(),
                      SizedBox(width: 16),
                      TextRich(
                        text1: "I Accept  ",
                        text2: "the terms & Conditions",
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  LoginBottom(text: "Create an account"),
                  SizedBox(height: 24),
                  TextRich(
                    text1: "Already an existing user? ",
                    text2: "Login",
                    ontap: () {
                      Navigator.pushNamed(context, AppRouts.forget);
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
