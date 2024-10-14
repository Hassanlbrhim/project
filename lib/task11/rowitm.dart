import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Rowitm extends StatelessWidget {
  const Rowitm({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusDirectional.circular(10),
              child: Container(
                padding: EdgeInsets.all(10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xffE4F3EA),
                ),
                child: SvgPicture.asset(
                  "images/carot.svg",
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Foods",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xff0C1A30)),
            )
          ],
        ),
        SizedBox(
          width: 30,
        ),
        Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusDirectional.circular(10),
              child: Container(
                padding: EdgeInsets.all(10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xffFFECE8),
                ),
                child: SvgPicture.asset(
                  "images/Gift.svg",
                  width: 24,
                  height: 24,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Gift",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xff0C1A30)),
            )
          ],
        ),
        SizedBox(
          width: 30,
        ),
        Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusDirectional.circular(10),
              child: Container(
                padding: EdgeInsets.all(10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xffFFF6E4),
                ),
                child: SvgPicture.asset(
                  "images/Fashion.svg",
                  width: 24,
                  height: 24,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Fashion",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xff0C1A30)),
            )
          ],
        ),
        SizedBox(
          width: 30,
        ),
        Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusDirectional.circular(10),
              child: Container(
                padding: EdgeInsets.all(10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xffF1EDFC),
                ),
                child: SvgPicture.asset(
                  "images/Gadget.svg",
                  width: 24,
                  height: 24,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Gadget",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xff0C1A30)),
            )
          ],
        ),
        SizedBox(
          width: 30,
        ),
        Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusDirectional.circular(10),
              child: Container(
                padding: EdgeInsets.all(10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xffE4F3EA),
                ),
                child: SvgPicture.asset(
                  "images/Gadget.svg",
                  width: 24,
                  height: 24,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Compute",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xff0C1A30)),
            )
          ],
        ),
      ],
    );
  }
}

class RowVew extends StatelessWidget {
  const RowVew({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Rowitm(),
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: 1),
    );
  }
}
