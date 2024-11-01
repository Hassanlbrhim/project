import 'package:flutter/material.dart';
import 'package:project3/configration/app_theme.dart';

class CartItem extends StatelessWidget {
  const CartItem(
      {super.key,
      required this.text1,
      required this.text2,
      required this.image});
  final String text1;
  final String text2;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                text1,
                style: TextStyle(
                    color: Color(0xff1F1F1F),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                    fontSize: 14),
              ),
              SizedBox(height: 4),
              Text(
                text2,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins",
                    color: AppTheme.primerycolor),
              ),
              SizedBox(height: 20),
              Container(
                height: 40,
                width: 124,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Text(
                          '-',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xff8C8C8C),
                          ),
                        ),
                      ),
                      Text(
                        '1',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xff187D44)),
                      ),
                      InkWell(
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
          Container(
            width: 57,
            height: 57,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<CartItem> ListCart = [
  const CartItem(
      text1: "Pizza Ransh extra cheese",
      text2: "1500 AED",
      image: "assets/images/74cb478bdbe2eb237e645b4966a25883.jpg"),
  CartItem(
      text1: "Chicken Cacciatore",
      text2: "1500 AED",
      image: "assets/images/plans.jpg")
];

class AddCart extends StatelessWidget {
  const AddCart({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ListCart[index];
        },
        separatorBuilder: (context, index) => Divider(
              height: 16,
            ),
        itemCount: ListCart.length);
  }
}
