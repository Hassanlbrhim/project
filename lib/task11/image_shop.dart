import 'package:flutter/material.dart';

class ImageShop extends StatelessWidget {
  const ImageShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          "images/WhatsApp Image 2024-10-11 at 22.10.19_31de7e27.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
