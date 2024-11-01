import 'package:flutter/material.dart';
import 'package:project3/configration/app_theme.dart';

import 'package:project3/custem_widget/order_add%20item.dart';
import 'package:project3/custem_widget/order_item.dart';
import 'package:project3/custem_widget/order_textFiled.dart';
import 'package:project3/custem_widget/order_type.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart",
          style: TextStyle(
              fontFamily: "Poppins", fontWeight: FontWeight.w500, fontSize: 16),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(),
              SizedBox(height: 10),
              OrderItem(),
              Divider(height: 30),
              SizedBox(height: 24),
              Text(
                "Voucher",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              OrderTextfiled(),
              SizedBox(
                height: 29,
              ),
              Text(
                "Choose the method",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins",
                    color: Color(0xff1F1F1F)),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OrderType(
                      imagePath: "assets/images/Frame.png", text: "Delivery"),
                  OrderType(
                      imagePath: "assets/images/Frame (1).png", text: "Pickup"),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              selectBranchOrder(),
              SizedBox(height: 24),
              Text(
                "Order Summury",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0xff1F1F1F)),
                  ),
                  Text(
                    "3000 AED",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0xff1F1F1F)),
                  )
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tax",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0xff1F1F1F)),
                  ),
                  Text(
                    "5 AED",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0xff1F1F1F)),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Amount",
                    style: TextStyle(
                        color: Color(0xff1F1F1F), fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "155 AED",
                    style: TextStyle(
                        color: AppTheme.primerycolor,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OrderAdditem(
                      contantcolor: Color(0xffEDEDED),
                      text: "Add More items",
                      color_text: AppTheme.primerycolor,
                    ),
                    OrderAdditem(
                        contantcolor: AppTheme.primerycolor,
                        text: "Checkout",
                        color_text: Colors.white)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
