import 'package:flutter/material.dart';

class ItemVew extends StatelessWidget {
  const ItemVew({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => ItemLis(),
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: 20),
    );
  }
}

class ItemLis extends StatelessWidget {
  const ItemLis({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        "images/WhatsApp Image 2024-10-11 at 22.10.20_1a15f370.jpg",
      ),
    );
  }
}
