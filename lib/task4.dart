import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Task4(),
  ));
}

class Task4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Plans'),
          actions: [
            //add
            IconButton(
                icon: Icon(
                  Icons.search,
                  size: 40,
                ),
                onPressed: () {}),
          ],
        ),
        body: ListView.separated(
          padding: EdgeInsets.all(16),
          itemCount: 10,
          separatorBuilder: (BuildContext context, int index) => SizedBox(
            height: 16,
          ),
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(5),
              decoration:
                  BoxDecoration(border: Border.all(color: Color(0xFFEDEDED))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    child: Image.asset(
                      "images/backtrack-linux-h8-1336x768.jpg",
                      width: 57,
                      height: 57,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Diet Plan",
                          style: TextStyle(
                            color: Color(0xFF1F1F1F),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              "Chicken wings  Vegetables and Frkkkkk",
                              style: TextStyle(
                                color: Color(0xFF8C8C8C),
                                fontWeight: FontWeight.w500,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "180 AED",
                          style: TextStyle(
                              color: Color(0xFF187D44),
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
