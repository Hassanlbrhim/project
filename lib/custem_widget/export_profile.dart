import 'package:flutter/material.dart';

class ExportProfile extends StatelessWidget {
  const ExportProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(width: 10),
      CircleAvatar(
        backgroundImage:
            AssetImage("assets/images/d5dd2901a091b157ead9e8a08d529a72.png"),
      ),
      SizedBox(width: 16),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Mohammed Ali",
            style: TextStyle(
              color: Color(0xff1F1F1F),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          Text(
            "Mohamed@example.com",
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color(0xff8C8C8C)),
          )
        ],
      )
    ]);
  }
}
