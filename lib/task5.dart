import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Task5(),
  ));
}

class Task5 extends StatefulWidget {
  //علشان اقدر اعمل اكشن براحتى

  @override
  State<Task5> createState() => _Task5State();
}

class _Task5State extends State<Task5> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Details screen",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("images/backtrack-linux-h8-1336x768.jpg",
                      width: 250, height: 250, fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Christmas blend ",
                style: TextStyle(
                    color: Color(0xff218261), fontWeight: FontWeight.bold),
              ),
              Text(
                "Espresso shots topped with cold water produce a light layer of crema, then served over ice. The result: a wonderfuly rich cup with depth and nuance.",
                style: TextStyle(
                    color: Color(0xffb1b1b1bf),
                    fontSize: 16,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Quantity:",
                    style: TextStyle(
                        color: Color(0xff218261),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                if (quantity < 1) {
                                  quantity = 0;
                                } else {
                                  quantity--;
                                }
                              });
                            },
                            icon: const Icon(Icons.remove)),
                        Text(quantity.toString()),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                quantity++;
                              });
                            },
                            icon: const Icon(Icons.add)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                alignment: Alignment.center,
                height: 48,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black),
                child: Text(
                  "Add to cart",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
