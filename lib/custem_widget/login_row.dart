import 'package:flutter/material.dart';

class LoginRow extends StatelessWidget {
  LoginRow({
    super.key,
    required this.text,
    required this.textcolor,
    required this.imagepath,
    required this.ContinarColor,
  });
  final String text;
  final Color textcolor;
  final String imagepath;
  final Color ContinarColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      width: 163,
      height: 56,
      decoration: BoxDecoration(
          color: ContinarColor, borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Image.asset(
            imagepath,
            width: 24,
            height: 24,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            text,
            style: TextStyle(
                color: textcolor,
                fontWeight: FontWeight.w700,
                fontSize: 14,
                fontFamily: "Poppins"),
          )
        ],
      ),
    );
  }
}
