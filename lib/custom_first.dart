import 'package:flutter/material.dart';

void main() {}

class customTextFiled extends StatelessWidget {
  customTextFiled(
      {this.label,
      required this.hint,
      this.isPassword = false,
      this.suffixIcon,
      required this.onChanged,
      this.keyboardType});

  final String? label;
  final String hint;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final Function(String) onChanged;
  // final TextEditingController? controller ;
  final bool isPassword;

  InputBorder generateBorder({required Color borderColor}) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: borderColor),
        borderRadius: BorderRadius.circular(15));
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      obscureText: isPassword,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        hintStyle: TextStyle(color: Color(0xffDBDBDB)),
        suffixIcon: suffixIcon,
        alignLabelWithHint: false,
        enabledBorder: generateBorder(borderColor: Color(0xffDBDBDB)),
        focusedBorder: generateBorder(borderColor: Color(0xff702A7D)),
        errorBorder: generateBorder(borderColor: Colors.red),
      ),
    );
  }
}
