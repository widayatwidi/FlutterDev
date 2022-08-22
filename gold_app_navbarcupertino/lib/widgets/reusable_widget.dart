import 'package:flutter/material.dart';

hexStringToColor(String hexColor) {
  hexColor = hexColor.toLowerCase().replaceAll("#", "");
  if(hexColor.length == 6) {
    hexColor = "FF" + hexColor;
  }

  return Color(int.parse(hexColor, radix: 16));
}

Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 100,
    height: 120,
  );
}

Image logoWidgetSmall(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 70,
    height: 90,
  );
}