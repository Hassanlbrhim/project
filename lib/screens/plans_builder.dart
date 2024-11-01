import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project3/configration/app_theme.dart';
import 'package:project3/custem_widget/plan_item.dart';

class Plansbuilder extends StatelessWidget {
  const Plansbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: Text(
          "Plans",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: "Poppins",
              fontSize: 16,
              color: Color(0xff1F1F1F)),
        ),
        actions: [
          Icon(
            Icons.search,
            size: 30,
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: const [
            Divider(),
            SizedBox(
              height: 20,
            ),
            Planitem(),
          ],
        ),
      ),
    );
  }
}
