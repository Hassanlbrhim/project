import 'package:flutter/material.dart';
import 'package:project3/configration/app_routs.dart';
import 'package:project3/configration/app_theme.dart';

class TextRich extends StatelessWidget {
  const TextRich(
      {super.key, required this.text1, required this.text2, this.ontap});
  final String text1;
  final String text2;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: ontap,
        child: Text.rich(
          TextSpan(
              text: text1,
              style: TextStyle(
                  color: Color(0xff1F1F1F),
                  fontFamily: "Poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
              children: <TextSpan>[
                TextSpan(
                    text: text2,
                    style: TextStyle(
                        color: AppTheme.primerycolor,
                        fontFamily: "Poppins",
                        fontSize: 14,
                        fontWeight: FontWeight.w600))
              ]),
        ),
      ),
    );
  }
}
