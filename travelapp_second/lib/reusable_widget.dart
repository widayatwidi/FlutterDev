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
    width: 180,
    height: 180,
  );
}

Container reusableButton(BuildContext context, String desc, String coloring) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.8,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        // Navigator.push(
        //   context, 
        //   MaterialPageRoute(builder: (context) => DestinasiPage())
        // );
      },
      child: Text(desc, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if(states.contains(MaterialState.pressed)) {
            return Colors.black26;
          }
          coloring = coloring.toLowerCase().replaceAll("#", "");
          if(coloring.length == 6) {
            coloring = "FF" + coloring;
          }

          return Color(int.parse(coloring, radix: 16));
          // return Colors.coloring;
        }),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
        )
      ),
    ),
  );
}

