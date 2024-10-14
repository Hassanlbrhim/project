import 'package:flutter/material.dart';
import 'package:project1/task11/routes.dart';

class Viw_all extends StatelessWidget {
  const Viw_all({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Categories",
          style: TextStyle(
              color: Color(0xff0C1A30),
              fontWeight: FontWeight.w500,
              fontSize: 16),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(Routes.page2);
          },
          child: Text(
            "See All",
            style: TextStyle(
                color: Color(0xff3669C9),
                fontWeight: FontWeight.w500,
                fontSize: 12),
          ),
        )
      ],
    );
  }
}

class Viw_all2 extends StatelessWidget {
  const Viw_all2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Featured Product",
          style: TextStyle(
              color: Color(0xff0C1A30),
              fontWeight: FontWeight.w500,
              fontSize: 16),
        ),
        Text(
          "See All",
          style: TextStyle(
              color: Color(0xff3669C9),
              fontWeight: FontWeight.w500,
              fontSize: 12),
        )
      ],
    );
  }
}
