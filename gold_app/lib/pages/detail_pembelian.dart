import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gold_app/pages/beli_rupiah.dart';
import 'package:gold_app/widgets/app_large_text.dart';
import 'package:gold_app/widgets/reusable_widget.dart';

class DetailBeli extends StatefulWidget {
  const DetailBeli({Key? key}) : super(key: key);

  @override
  State<DetailBeli> createState() => _DetailBeliState();
}

class _DetailBeliState extends State<DetailBeli> {
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
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white,),
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => BeliRup())
                      );
                    },
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.1,),
                  Center(
                    child: AppLargeText(text: "Rincian Pemesanan", color: Colors.white, size: 17,),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white),
                  gradient: LinearGradient(
                    colors: [
                      hexStringToColor("000000"),
                      hexStringToColor("100F0F"),
                      hexStringToColor("100720")
                    ],
                    // begin: Alignment.topCenter, end: Alignment.bottomCenter
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}