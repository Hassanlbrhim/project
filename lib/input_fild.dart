import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyWidget(),
  ));
}

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String? textval;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("home page"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  setState(() {
                    textval = value;
                  });
                },
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  prefix: Icon(
                    Icons.person,
                    color: Colors.black45,
                  ),
                  hintText: "enter name",
                  hintStyle:
                      TextStyle(color: const Color.fromARGB(255, 53, 30, 30)),
                  labelText: "Enter your name",
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 101, 97, 97)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
              MaterialButton(
                color: Colors.black87,
                onPressed: () {
                  print(textval);
                },
                child: Text("submit"),
                textColor: Colors.white,
              ),
              Text("$textval"),
              SizedBox(
                height: 20,
              ),
              /* TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  prefix: Icon(
                    Icons.email,
                    color: Colors.blue,
                  ),

                  /* hintText: "enter name",
                    hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 53, 30, 30))*/
                  labelText: "Enter your email",
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 101, 97, 97)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
