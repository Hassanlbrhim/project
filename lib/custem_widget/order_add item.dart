import 'package:flutter/material.dart';

class OrderAdditem extends StatelessWidget {
  const OrderAdditem(
      {super.key,
      required this.contantcolor,
      required this.text,
      required this.color_text});
  final Color contantcolor;
  final String text;
  final Color color_text;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        width: 153,
        height: 52,
        decoration: BoxDecoration(
            color: contantcolor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0xffEDEDED))),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: color_text, fontWeight: FontWeight.w500, fontSize: 14),
          ),
        ));
  }
}
