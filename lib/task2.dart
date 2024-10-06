import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Task2(),
  ));
}

class Task2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Container(
                child: Image.asset(
                  "images/backtrack-linux-h8-1336x768.jpg",
                  fit: BoxFit.cover,
                ),
                width: 430,
                height: 200,
                color: Color.fromRGBO(217, 217, 217, 1)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Title',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromRGBO(0, 0, 0, 2)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "TexLorem Ipsum simply dummy text ofnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn"),
                  SizedBox(height: 20),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Delivery:",
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(width: 15),
                        Text(
                          "20 Minutes",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Add_ons",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromRGBO(2, 0, 0, 4)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          child: Image(
                            image: AssetImage(
                                "images/backtrack-linux-h8-1336x768.jpg"),
                          ),
                          color: Color.fromRGBO(217, 217, 217, 1),
                        ),
                        SizedBox(width: 10),
                        Container(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          child: Image(
                            image: AssetImage(
                                "images/backtrack-linux-h8-1336x768.jpg"),
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          child: Image(
                            image: AssetImage(
                                "images/backtrack-linux-h8-1336x768.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("data"),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
