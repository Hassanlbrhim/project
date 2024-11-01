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
import 'package:project3/screens/buttomNavgion.dart';

void main() {
  runApp(MaterialApp());
}

class LoginScreens extends StatelessWidget {
  const LoginScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImagePage(
              ontap: () {
                Navigator.pop(context, AppRouts.Create);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  TextColum(
                      text1: "Welcome Back!",
                      text2: "Have a healthy & Tasty day ahead"),
                  SizedBox(
                    height: 16,
                  ),
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
                  SizedBox(height: 35),
                  OrDvider(),
                  SizedBox(height: 24),
                  TextFiled(hintText: "Email Address"),
                  SizedBox(height: 16),
                  TextFiled(
                    hintText: "Password",
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: AppTheme.primerycolor),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  LoginBottom(text: "Login"),
                  SizedBox(
                    height: 24,
                  ),
                  TextRich(
                    text1: "Don’t have an account? ",
                    text2: "Create new one",
                    ontap: () {
                      Navigator.pushNamed(context, AppRouts.Create);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
