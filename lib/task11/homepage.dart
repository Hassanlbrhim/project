import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project1/task11/ListViw.dart';

import 'package:project1/task11/Rowitm.dart';
import 'package:project1/task11/viw_all.dart';
import 'package:project1/task11/colum_item.dart';

import 'package:project1/task11/image_shop.dart';

import 'package:project1/task11/searcpar.dart';

class PageHome extends StatefulWidget {
  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mega Mall",
          style: TextStyle(
              color: Color(0xff3669C9),
              fontWeight: FontWeight.w700,
              fontSize: 18),
        ),
        centerTitle: true,
        actions: action_par,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              searchAppr(),
              SizedBox(
                height: 20,
              ),
              ItemVew(),
              SizedBox(
                height: 30,
              ),
              Viw_all(),
              SizedBox(
                height: 20,
              ),
              RowVew(),
              SizedBox(
                height: 35,
              ),
              Viw_all2(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ColumItem(), ColumItem2()],
              ),
              SizedBox(
                height: 40,
              ),
              ImageShop(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectIndex = value;
          });
        },
        currentIndex: selectIndex,
        selectedItemColor: Color(0xff3669C9),
        unselectedItemColor: Color(0xff0C1A30),
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset("images/menu.svg"), label: "Home"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("images/WISHLIST.svg"), label: "WISHLIST"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("images/Bag.svg"), label: "ORDER"),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 10,
                backgroundImage: AssetImage("images/image.png"),
              ),
              label: "ACCOUNT"),
        ],
      ),
    );
  }

  List<Widget> get action_par {
    return [
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
                onPressed: () {}, icon: Icon(Icons.notifications_active)),
          ),
          Positioned(
            right: 4,
            top: 4,
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        width: 10,
      ),
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
            child:
                IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          ),
          Positioned(
            right: 4,
            top: 4,
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ],
      ),
    ];
  }
}
