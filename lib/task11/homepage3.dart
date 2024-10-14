import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage3(),
  ));
}

class Homepage3 extends StatelessWidget {
  const Homepage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Product',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.only(bottom: 16),
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.shopping_cart)),
              ),
              Positioned(
                right: 4,
                top: 4,
                child: Container(
                  width: 10,
                  height: 7,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image_peag3(),
              SizedBox(
                height: 30,
              ),
              Row_page3(),
              Divider_page(),
              Row_shop(),
              Divider_page(),
              Colum_text(),
              SizedBox(
                height: 55,
              ),
              End_page3(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container Image_peag3() {
    return Container(
      padding: EdgeInsets.all(10),
      width: 405,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffFFFFFF),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "images/cb3899e7059c3bb4c6a0cfd8521207bd.png",
            width: 320,
            height: 200,
          ),
          Row(
            children: [Text("1/5 Foto")],
          )
        ],
      ),
    );
  }

  Row End_page3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 153,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffFE3A30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Added",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFFFFFF),
                    fontSize: 14),
              ),
              SizedBox(
                width: 10,
              ),
              SvgPicture.asset("images/Heart.svg")
            ],
          ),
        ),
        Container(
          width: 153,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff3669C9)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Add to Cart",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFFFFFF),
                    fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column Colum_text() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description Product",
          style: TextStyle(
              color: Color(0xff0C1A30),
              fontWeight: FontWeight.w700,
              fontSize: 16),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "The speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers. ",
          style: TextStyle(
              color: Color(0xff0C1A30),
              fontWeight: FontWeight.w400,
              fontSize: 14),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "The speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers. ",
          style: TextStyle(
              color: Color(0xff0C1A30),
              fontWeight: FontWeight.w400,
              fontSize: 14),
        )
      ],
    );
  }

  Divider Divider_page() {
    return Divider(
      height: 45,
      color: Color(0xffEDEDED),
      thickness: 1,
      indent: 10,
      endIndent: 10,
    );
  }

  Row Row_shop() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage:
              AssetImage("images/ce3e57db39b00ae70f74f6804554e523.png"),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Shop Larson Electronic",
              style: TextStyle(
                  color: Color(0xff0C1A30),
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            Row(
              children: [
                Text(
                  "Official Store",
                  style: TextStyle(
                      color: Color(0xff0C1A30),
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
                SizedBox(
                  width: 10,
                ),
                SvgPicture.asset("images/child.svg")
              ],
            )
          ],
        ),
        SizedBox(
          width: 100,
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.navigate_next))
      ],
    );
  }

  Container Row_page3() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "TMA-2HD Wireless",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xff0C1A30)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Rp. 1.500.000",
            style: TextStyle(
                color: Color(0xffFE3A30),
                fontWeight: FontWeight.w700,
                fontSize: 16),
          ),
          SizedBox(
            height: 10,
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
                    fontSize: 14,
                    color: Color(0xff0C1A30)),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(width: 15),
              Text(
                "86 Reviews",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff0C1A30)),
              ),
              SizedBox(
                width: 150,
              ),
              Text(
                "Tersedia : 250",
                style: TextStyle(
                    color: Color(0xff3A9B7A),
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
