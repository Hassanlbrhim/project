import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: task(),
    ),
  );
}

class task extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.black45,
            width: 50,
            height: 50,
            child: Text("data"),
            margin: EdgeInsets.fromLTRB(24, 56, 5, 6),
          ),
          Row(children: [
            Container(
              width: 164,
              height: 156,
              //margin: EdgeInsets.fromLTRB(24, 152, 0, 0),
              color: Colors.red,
              child: Text("data"),
            ),
            Container(
              width: 164,
              height: 156,
              // margin: EdgeInsets.fromLTRB(28, 152, 0, 0),
              color: Colors.black,
            ),
          ])
        ],
      ),
    );
  }
}
