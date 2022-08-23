import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gold_app_navbarcupertino/maincontent/transaksi.dart';
import 'package:gold_app_navbarcupertino/widgets/reusable_widget.dart';

class TransaksiBeli extends StatefulWidget {
  const TransaksiBeli({Key? key}) : super(key: key);

  @override
  State<TransaksiBeli> createState() => _TransaksiBeliState();
}

class _TransaksiBeliState extends State<TransaksiBeli> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(gradient: LinearGradient(
        colors: [
          hexStringToColor("F8F2EF"),
          hexStringToColor("F8F2EF"),
          // hexStringToColor("100720")
        ],
        begin: Alignment.topCenter, end: Alignment.bottomCenter
      )),
    );
  }
}