import 'package:flutter/material.dart';
import 'package:project1/custom_first.dart';

void main() {
  runApp(MaterialApp(
    home: Task7(),
  ));
}

class Task7 extends StatefulWidget {
  @override
  State<Task7> createState() => _task7State();
}

class _task7State extends State<Task7> {
  String firstName = "";
  String lastName = "";
  String email = "";
  String phone = "";
  String password = "";
  String confirmPassword = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 224,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
          backgroundColor: Color(
            0xFF702A7D,
          ),
          title: SizedBox(
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onTap: () {
                    print("Back button clicked");
                  },
                ),
                SizedBox(height: 16),
                Text("Create New Account 👋",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text("Welcome on coursafer board!",
                    style: TextStyle(color: Colors.white, fontSize: 14)),
              ],
            ),
          ),
          centerTitle: false,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customTextFiled(
                  hint: "enter your name",
                  label: "first name*",
                  suffixIcon: Icon(Icons.person),
                  onChanged: (value) {
                    firstName = value;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                customTextFiled(
                  hint: "last name",
                  label: " Enter your last name*",
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: 20,
                ),
                customTextFiled(
                  hint: "Enter Email",
                  label: "Enter your mail*",
                  suffixIcon: Icon(Icons.mail),
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: 20,
                ),
                customTextFiled(
                  hint: "phone",
                  label: "Enter your phone*",
                  onChanged: (value) {
                    phone = value;
                    print(phone);
                  },
                  suffixIcon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 44,
                        height: 31,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color(0xff702A7D0D).withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
