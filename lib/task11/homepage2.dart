import 'package:flutter/material.dart';
import 'package:project1/task11/colum_item.dart';
import 'package:project1/task11/searcpar.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage2(),
  ));
}

class Homepage2 extends StatefulWidget {
  const Homepage2({super.key});

  @override
  State<Homepage2> createState() => _Homepage2State();
}

class _Homepage2State extends State<Homepage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Padding(padding: EdgeInsets.all(20)),
        title: Text(
          "Category",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),
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
              Text(
                "Gadget",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0xff0C1A30),
                    fontSize: 24),
              ),
              searchAppr(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ColumItem2(), ColumItem()],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ColumItem(), ColumItem2()],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ColumItem2(), ColumItem()],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffFFFFFF)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Filter & Sorting",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff0C1A30),
                          fontSize: 14),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
