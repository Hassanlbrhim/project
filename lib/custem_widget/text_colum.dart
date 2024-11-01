import 'package:flutter/material.dart';

class TextColum extends StatelessWidget {
  TextColum({super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
                color: Color(0xff1F1F1F)),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            text2,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xff8C8C8C),
                fontFamily: "Poppins"),
          )
        ],
      ),
    );
  }
}
