import 'package:flutter/material.dart';
import 'package:project3/configration/app_routs.dart';
import 'package:project3/configration/app_theme.dart';

class LoginBottom extends StatelessWidget {
  const LoginBottom({super.key, required this.text, this.ontap});
  final String text;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: OutlinedButton(
          onPressed: ontap,
          style: OutlinedButton.styleFrom(
              backgroundColor: AppTheme.primerycolor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(horizontal: 38, vertical: 21)),
          child: Text(
            text,
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xffFFFFFF)),
          )),
    );
  }
}

class CustomCheckbox extends StatefulWidget {
  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isChecked = !_isChecked;
        });
      },
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(
                color: Color(0xff187D44),
                width: 2.0,
              ),
              color: _isChecked ? Color(0xff187D44) : Colors.white,
            ),
            width: 24,
            height: 24,
            child: _isChecked
                ? Icon(
                    Icons.check,
                    size: 18.0,
                    color: Colors.white,
                  )
                : null,
          ),
        ],
      ),
    );
  }
}
