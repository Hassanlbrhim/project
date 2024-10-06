import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: chekbox(),
  ));
}

class chekbox extends StatefulWidget {
  @override
  State<chekbox> createState() => _chekboxState();
}

class _chekboxState extends State<chekbox> {
  bool basket = false;
  String? contry;
  bool on = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              CheckboxListTile(
                  activeColor: Colors.black45,
                  title: Text("hello"),
                  value: basket,
                  onChanged: (valu) {
                    setState(() {
                      basket = valu!;
                    });
                  }),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)),
                child: RadioListTile(
                    title: Text("ordon"),
                    value: "ordon",
                    groupValue: contry,
                    onChanged: (val) {
                      setState(() {
                        contry = val;
                      });
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              RadioListTile(
                  title: Text("Egypt"),
                  value: "egypt",
                  groupValue: contry,
                  onChanged: (val) {
                    setState(() {
                      contry = val;
                    });
                  }),
              Text("data the $contry"),
              SizedBox(
                height: 50,
              ),
              Switch(
                  activeColor: Colors.green,
                  inactiveThumbColor: Colors.lightGreen,
                  value: on,
                  onChanged: (val) {
                    setState(() {
                      on = val;
                    });
                    print("hello hassan");
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
