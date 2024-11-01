import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderTextfiled extends StatelessWidget {
  const OrderTextfiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 8.0),
          child: SvgPicture.asset(
            'assets/icons/voucher.svg',
            width: 24,
            height: 24,
          ),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.only(
              right: 12,
              top: 10,
            ),
            child: Text(
              'Apply',
              style: TextStyle(
                color: Color(0xFF187D44),
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
        ),
        hintText: 'Enter the voucher',
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color(0xFFBFBFBF),
        ),
        contentPadding: const EdgeInsets.all(16.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Color(0xFFEDEDED)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Color(0xFFEDEDED)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Color(0xFFEDEDED)),
        ),
      ),
    );
  }
}
