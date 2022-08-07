import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gold_app/widgets/globals.dart';

class TextFieldWidgetImage extends StatelessWidget {
  
  final String? hintText;
  final String? prefixIconData;
  final IconData? suffixIconData;
  final bool obscureText;
  // final Function onChanged;

  TextFieldWidgetImage({
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
        color: Color.fromARGB(255, 10, 10, 9),
        fontSize: 14
      ),
      cursorColor: Color.fromARGB(255, 8, 8, 8),
      decoration: InputDecoration(
        labelText: hintText,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 5, right: 20, top: 5, bottom: 5),
          child: Image.asset(
            "assets/images/bank/$prefixIconData",
            width: 60,
            height: 20,
            fit: BoxFit.fill,
          ),
        ),
        // prefixIcon: Icon(
        //   prefixIconData,
        //   size: 18,
        //   color: Color.fromARGB(255, 5, 5, 5),
        // ),
        filled: true,
        // fillColor: Colors.white.withOpacity(0.3),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color.fromARGB(255, 8, 8, 8)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color.fromARGB(255, 8, 8, 8))
        ),
        suffixIcon: Icon(
          suffixIconData,
          size: 18,
          color: Color.fromARGB(255, 6, 6, 6),
        ),
        labelStyle: TextStyle(color: Color.fromARGB(255, 8, 8, 8)),
        focusColor: Color.fromARGB(255, 4, 4, 4),
      ),
    );
  }
}