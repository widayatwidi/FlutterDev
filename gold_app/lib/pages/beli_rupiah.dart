import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gold_app/widgets/reusable_widget.dart';

class BeliRup extends StatefulWidget {
  const BeliRup({Key? key}) : super(key: key);

  @override
  State<BeliRup> createState() => _BeliRupState();
}

class _BeliRupState extends State<BeliRup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              hexStringToColor("000000"),
              hexStringToColor("100F0F"),
              hexStringToColor("100720")
            ],
            begin: Alignment.topCenter, end: Alignment.bottomCenter
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(30, MediaQuery.of(context).size.height * 0.03, 30, 0),
              child: Column(
                children: [
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}