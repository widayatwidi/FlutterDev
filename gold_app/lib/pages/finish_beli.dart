import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gold_app/pages/profile.dart';
import 'package:gold_app/widgets/app_large_text.dart';
import 'package:gold_app/widgets/app_text.dart';
import 'package:gold_app/widgets/reusable_widget.dart';

class FinishBeli extends StatefulWidget {
  const FinishBeli({Key? key}) : super(key: key);

  @override
  State<FinishBeli> createState() => _FinishBeliState();
}

class _FinishBeliState extends State<FinishBeli> {
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
                child: Center(
                  child: AppLargeText(text: "Selesaikan Pembayaran", color: Colors.white, size: 17,),
                ),
              ),
              SizedBox(height: 25,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.98,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 229, 229)
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 50,
                      left: 35,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 510,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 50, left: 35, right: 35),
                              child: Center(
                                child: Text("Satu langkah lagi, kamu punya emas sebesar 5 Gram. Selesaikan pembayaran sekarang!", style: TextStyle(color: Color.fromARGB(255, 186, 149, 19), fontSize: 14), textAlign: TextAlign.center,),
                              ),
                            ),
                            SizedBox(height: 45,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      AppText(text: "No. Traksaksi", size: 13,),
                                      AppLargeText(text: "IN/0945/345620", size: 13,),
                                    ],
                                  ),
                                  SizedBox(height: 15,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      AppText(text: "Berat Emas", size: 13,),
                                      AppLargeText(text: "5 Gram", size: 13,),
                                    ],
                                  ),
                                  SizedBox(height: 15,),
                                  Divider(
                                    color: Color.fromARGB(31, 16, 16, 16),
                                    thickness: 2,
                                  ),
                                  SizedBox(height: 15,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      AppText(text: "Uang yang dibayar", size: 13,),
                                      AppLargeText(text: "Rp 4.669.000,-", size: 13,),
                                    ],
                                  ),
                                  SizedBox(height: 35,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      AppText(text: "Transfer ke Virtual Account", size: 13,)
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset("assets/images/bank/mandiri.png", width: 60, height: 30,),
                                      SizedBox(width: 2,),
                                      AppLargeText(text: "Bank Mandiri", size: 13,)
                                    ],
                                  ),
                                  SizedBox(height: 15,),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 233, 229, 229),
                                      borderRadius: BorderRadius.circular(8)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10, right: 10),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          AppLargeText(text: "788374788332", size: 12,),
                                          AppText(text: "SALIN", size: 12,)
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 35,),
                                  Text("Batas waktu pembayaran s/d pukul 21.00 WIB 15 Maret 2022", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 35,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 45,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 83, 211, 58),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(8)
                            )
                          ),
                          onPressed: (() {
                            print("Lanjutkan ke pembayaran");
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => ProfilePage())
                            );
                          }), 
                          child: const Text(
                            "Kembali ke Halaman Utama",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          )
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 150,
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 195, 233, 151),
                        radius: 35,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage("assets/images/check-ok.jpeg"),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}