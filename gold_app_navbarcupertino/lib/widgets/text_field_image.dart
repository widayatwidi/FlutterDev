import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
    return Material(
      child: TextField(
        // onChanged: onChanged,
        obscureText: obscureText,
        style: TextStyle(
          color: Color.fromARGB(100, 254, 153, 117),
          fontSize: 12
        ),
        cursorColor: Color.fromARGB(100, 254, 153, 117),
        decoration: InputDecoration(
          labelText: hintText,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 15, right: 20, top: 5, bottom: 5),
            child: Image.asset(
              "assets/images/bank/$prefixIconData",
              width: 50,
              height: 15,
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
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(color: Color.fromARGB(100, 254, 153, 117)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(color: Color.fromARGB(100, 254, 153, 117))
          ),
          suffixIcon: Icon(
            suffixIconData,
            size: 18,
            color: Color.fromARGB(100, 254, 153, 117),
          ),
          labelStyle: TextStyle(color: Color.fromARGB(255, 254, 153, 117)),
          focusColor: Color.fromARGB(255, 4, 4, 4),
        ),
      ),
    );
  }
}