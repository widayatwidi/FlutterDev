import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gold_app_navbarcupertino/maincontent/transaksi.dart';
import 'package:gold_app_navbarcupertino/transaksipages/metodebayar.dart';
import 'package:gold_app_navbarcupertino/widgets/app_large_text.dart';
import 'package:gold_app_navbarcupertino/widgets/app_text.dart';
import 'package:gold_app_navbarcupertino/widgets/reusable_widget.dart';

class DetailBayar extends StatefulWidget {
  const DetailBayar({Key? key}) : super(key: key);

  @override
  State<DetailBayar> createState() => _DetailBayarState();
}

class _DetailBayarState extends State<DetailBayar> {
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
      child: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 10, right: 20),
              child: Row(
                children: [
                  CupertinoButton(
                    child: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context, 
                        CupertinoPageRoute(builder: (context) => MetodeBayar())
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(text: "Rincian Transaksi", size: 12,),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      AppText(text: "Emas 0,116 gram: ", size: 12,),
                      AppLargeText(text: "Rp 111.093,-", size: 12,)
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      AppText(text: "Biaya Admin: ", size: 12,),
                      AppLargeText(text: "Rp 5.000,-", size: 12,)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              height: 110,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    hexStringToColor("FE9975"),
                    hexStringToColor("FE9975"),
                  ]
                ),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppText(text: "Subtotal:", size: 12, color: Colors.white,),
                    SizedBox(height: 10,),
                    AppLargeText(text: "Rp. 111.093,-", size: 16, color: Colors.white,),
                    SizedBox(height: 10,),
                    AppText(text: "Pembelian 0.116 gr Emas", size: 14, color: Colors.white,),
                  ],
                )
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 65, right: 65),
              child: Center(
                child: Text("Pembayaran dapat dilakukan melalui CIMB terdekat", textAlign: TextAlign.center, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),)
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              height: 170,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    hexStringToColor("FBF7F6"),
                    hexStringToColor("FBF7F6"),
                  ]
                ),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color.fromARGB(255, 228, 228, 228))
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppText(text: "Mohon Transfer sesuai dengan VA berikut:", size: 12),
                    SizedBox(height: 25,),
                    AppLargeText(text: "Baby Gold Revi", size: 12),
                    SizedBox(height: 15,),
                    AppLargeText(text: "12454634-3434-898", size: 12),
                    SizedBox(height: 15,),
                    Container(
                      width: 60,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(3)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text("Salin",textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.white),),
                      ),
                    )
                  ],
                )
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(text: "Bayar sebelum : ", size: 12,),
                  AppLargeText(text: "2022-01-20 23:59:00", size: 12,)
                ],
              ),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Container(
                height: 45,
                width: MediaQuery.of(context).size.width * 0.85,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 121, 73),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(16)
                    )
                  ),
                  onPressed: (() {
                    print("Proses Beli Emas");
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => TransaksiPage())
                    );
                  }), 
                  child: const Text(
                    "Kembali Ke Halaman Utama",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  )
                ),
              ),
            ),
            SizedBox(height: 40,)
          ],
        ),
      )
    );
  }
}