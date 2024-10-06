import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Businss_card(),
    ),
  );
}

class Businss_card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF2B475E),
        body: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 112,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage('images/backtrack-linux-h8-1336x768.jpg'),
                  radius: 110,
                ),
              ),
              Text(
                "Hassa lbrahim Ali",
                style: TextStyle(
                    color: Colors.white, fontSize: 30, fontFamily: "Pacifico"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6c8090)),
              ),
              Divider(
                height: 25,
                color: Color(0xFF6c8090),
              ),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      size: 34,
                      color: Color(0xFF2B475E),
                    ),
                    SizedBox(
                      width: 21,
                    ),
                    Text(
                      "(+20) 1144952087",
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Row(
                  children: [
                    Icon(
                      Icons.mail,
                      size: 34,
                      color: Color(0xFF2B475E),
                    ),
                    SizedBox(
                      width: 21,
                    ),
                    Text(
                      "hb@gmail.com",
                      style: TextStyle(fontSize: 24),
                    ),
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
