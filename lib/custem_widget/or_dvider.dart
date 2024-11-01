import 'package:flutter/material.dart';

class OrDvider extends StatelessWidget {
  const OrDvider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(child: Divider()),
          SizedBox(
            width: 10,
          ),
          Text("OR"),
          SizedBox(
            width: 10,
          ),
          Expanded(child: Divider())
        ],
      ),
    );
  }
}
