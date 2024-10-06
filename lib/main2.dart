import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffD2BcD5),
        body: Center(
          child: Image(
            image: AssetImage(
                'images/2022-01-19_06-29-41-33803e677e5b58cfcf6c40e60220beb3.png'),
          ),
        ),
      ),
    );
  }
}
