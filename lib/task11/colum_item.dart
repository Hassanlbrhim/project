import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ColumItem extends StatelessWidget {
  const ColumItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 156,
      height: 242,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffFFFFFF),
      ),
      child: Column(
        children: [
          Image.asset(
            "images/0276156cabca6b5617c3d8b179ecc573.png",
            width: 130,
            height: 130,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "TMA-2 HD Wireless",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color(0xff0C1A30)),
          ),
          SizedBox(
            height: 3.5,
          ),
          Text(
            "Rp. 1.500.000",
            style: TextStyle(
                color: Color(0xffFE3A30),
                fontWeight: FontWeight.w700,
                fontSize: 12),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset("images/star.svg"),
              SizedBox(
                width: 5,
              ),
              Text(
                '4.6',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xff0C1A30)),
              ),
              SizedBox(width: 15),
              Text(
                "86 Reviews",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xff0C1A30)),
              ),
              SizedBox(
                width: 9,
              ),
              SvgPicture.asset(
                "images/menu_dot.svg",
              )
            ],
          )
        ],
      ),
    );
  }
}

class ColumItem2 extends StatelessWidget {
  const ColumItem2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 156,
      height: 242,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffFFFFFF),
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed("home_page3");
        },
        child: Column(
          children: [
            Image.asset(
              "images/cb3899e7059c3bb4c6a0cfd8521207bd.png",
              width: 130,
              height: 130,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "TMA-2 HD Wireless",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xff0C1A30)),
            ),
            SizedBox(
              height: 3.5,
            ),
            Text(
              "Rp. 1.500.000",
              style: TextStyle(
                  color: Color(0xffFE3A30),
                  fontWeight: FontWeight.w700,
                  fontSize: 12),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset("images/star.svg"),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '4.6',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xff0C1A30)),
                ),
                SizedBox(width: 15),
                Text(
                  "86 Reviews",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xff0C1A30)),
                ),
                SizedBox(
                  width: 9,
                ),
                SvgPicture.asset(
                  "images/menu_dot.svg",
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
