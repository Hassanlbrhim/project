import 'package:flutter/material.dart';

class OrderType extends StatelessWidget {
  final String imagePath;
  final String text;
  const OrderType({super.key, required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 163,
        height: 52,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFFEDEDED)),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 8),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
