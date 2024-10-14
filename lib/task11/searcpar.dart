import 'package:flutter/material.dart';

class searchAppr extends StatefulWidget {
  @override
  State<searchAppr> createState() => _searchApprState();
}

class _searchApprState extends State<searchAppr> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        width: 325,
        height: 50,
        child: TextField(
          onChanged: (value) {},
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20),
            fillColor: Color(0xffFAFAFA),
            filled: true,
            suffixIcon: Icon(
              Icons.search,
              size: 20,
              color: Color(0xff0C1A30),
            ),
            labelText: "Search Product Name",
            labelStyle: TextStyle(
                color: Color(0xffC4C5C4),
                fontWeight: FontWeight.w500,
                fontSize: 14),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
          ),
        ),
      ),
    );
  }
}
