import 'package:flutter/material.dart';

class TextFiled extends StatelessWidget {
  const TextFiled(
      {super.key,
      required this.hintText,
      this.icons,
      this.obscureText = false});
  final String hintText;
  final Icon? icons;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
          hintText: hintText,
          suffixIcon: icons,
          hintStyle: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              color: Color(0xffBFBFBF)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xffEDEDED),
              ),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffEDEDED)))),
    );
  }
}
