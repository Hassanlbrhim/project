import 'package:flutter/material.dart';

class PlanCart extends StatelessWidget {
  const PlanCart(
      {super.key,
      required this.image,
      required this.Text1,
      required this.Text2,
      required this.Text3});
  final String Text1;
  final String Text2;
  final String Text3;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Text1,
                style: TextStyle(
                    color: Color(0xff1F1F1F),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                    fontSize: 14),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                Text2,
                style: TextStyle(
                    color: Color(0xff8C8C8C),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                Text3,
                style: TextStyle(
                    color: Color(0xff187D44),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
            ],
          ),
        ),
        SizedBox(width: 27),
        IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
      ],
    );
  }
}

List<PlanCart> listCart = [
  PlanCart(
      image: "assets/images/plans2.jpg",
      Text1: "Diet Plan",
      Text2: "Chicken wings, Vegetables and Fru..",
      Text3: "180 AED"),
  PlanCart(
      image: "assets/images/plans.jpg",
      Text1: "Gym Plan",
      Text2: "Chicken wings, Vegetables and Fru..",
      Text3: "180 AED"),
  PlanCart(
      image: "assets/images/plans.jpg",
      Text1: "Gym Plan",
      Text2: "Chicken wings, Vegetables and Fru..",
      Text3: "180 AED"),
  PlanCart(
      image: "assets/images/plans.jpg",
      Text1: "Gym Plan",
      Text2: "Chicken wings, Vegetables and Fru..",
      Text3: "180 AED"),
];

class Planitem extends StatelessWidget {
  const Planitem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return listCart[index];
        },
        separatorBuilder: (context, index) => Divider(
              height: 30,
            ),
        itemCount: listCart.length);
  }
}
