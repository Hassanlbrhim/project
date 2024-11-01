import 'package:flutter/material.dart';
import 'package:project3/custem_widget/cart_item.dart';
import 'package:project3/custem_widget/plan_item.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Cart",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: "Poppins",
              fontSize: 16,
              color: Color(0xff1F1F1F),
            ),
          ),
          shadowColor: Colors.black12,
        ),
        body: Column(
          children: [Divider(), SizedBox(height: 1), AddCart()],
        ));
  }
}
