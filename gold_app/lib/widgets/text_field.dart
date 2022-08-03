import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gold_app/widgets/globals.dart';

class TextFieldWidget extends StatelessWidget {
  
  final String? hintText;
  final IconData? prefixIconData;
  final IconData? suffixIconData;
  final bool obscureText;
  // final Function onChanged;

  TextFieldWidget({
    this.hintText,
    this.prefixIconData,
    this.suffixIconData,
    required this.obscureText,
    // required this.onChanged
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      // onChanged: onChanged,
      obscureText: obscureText,
      style: TextStyle(
        color: Color.fromARGB(255, 76, 242, 42),
        fontSize: 14
      ),
      cursorColor: Color.fromARGB(255, 76, 242, 42),
      decoration: InputDecoration(
        labelText: hintText,
        prefixIcon: Icon(
          prefixIconData,
          size: 18,
          color: Color.fromARGB(255, 76, 242, 42),
        ),
        filled: true,
        // fillColor: Colors.white.withOpacity(0.3),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color.fromARGB(255, 76, 242, 42)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color.fromARGB(255, 76, 242, 42))
        ),
        suffixIcon: Icon(
          suffixIconData,
          size: 18,
          color: Global.mediumBlue,
        ),
        labelStyle: TextStyle(color: Color.fromARGB(255, 76, 242, 42)),
        focusColor: Color.fromARGB(255, 76, 242, 42),
      ),
    );
  }
}