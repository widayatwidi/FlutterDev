import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gold_app_navbarcupertino/maincontent/transaksi.dart';
import 'package:gold_app_navbarcupertino/transaksipages/metodebayar.dart';
import 'package:gold_app_navbarcupertino/widgets/app_large_text.dart';
import 'package:gold_app_navbarcupertino/widgets/app_text.dart';
import 'package:gold_app_navbarcupertino/widgets/reusable_widget.dart';
import 'package:gold_app_navbarcupertino/widgets/text_field_abu.dart';
import 'package:gold_app_navbarcupertino/widgets/text_field_black.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
                      CupertinoPageRoute(builder: (context) => TransaksiPage())
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            width: MediaQuery.of(context).size.width * 0.85,
            height: 90,
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
              padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
              child: Row(
                  children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 242, 240, 239),
                        radius: 23,
                        child: CircleAvatar(
                          radius: 22.5,
                          // backgroundImage: AssetImage("assets/images/check-ok.jpeg"),
                          backgroundColor: Colors.transparent,
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(text: "Mau beli berapa rupiah hari ini?", color: Colors.white, size: 12,),
                      SizedBox(height: 7,),
                      AppLargeText(text: "Rp 934.000,-/gram", color: Colors.white, size: 14,)
                    ],
                  ),
                ],
              )
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 40,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        hexStringToColor("FE9975"),
                        hexStringToColor("FE9975"),
                      ]
                    ),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: AppText(text: "Rupiah", color: Colors.white, size: 12,)),
                ),
                SizedBox(width: 10,),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 40,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        hexStringToColor("FFFFFF"),
                        hexStringToColor("FFFFFF"),
                      ]
                    ),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color.fromARGB(100, 254, 153, 117))
                  ),
                  child: Center(child: AppText(text: "Gram", color: Color.fromARGB(255, 254, 153, 117), size: 12,)),
                ),
              ],
            ),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.only(left: 35, right: 35),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(text: "Masukkan Jumlah Rupiah", size: 12,),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: TextFieldWidgetAbu(
              hintText: 'Enter Amount',
              obscureText: false,
              prefixIconData: Icons.price_change_outlined,
            ),
          ),
          SizedBox(height: 20,),
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
                  AppText(text: "Rupiah kamu setara dengan:", size: 12, color: Colors.white,),
                  SizedBox(height: 10,),
                  AppLargeText(text: "0", size: 16, color: Colors.white,),
                  SizedBox(height: 10,),
                  AppLargeText(text: "gram Emas", size: 14, color: Colors.white,),
                ],
              )
            ),
          ),
          SizedBox(height: 80,),
          Container(
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
                  MaterialPageRoute(builder: (context) => MetodeBayar())
                );
              }), 
              child: const Text(
                "Pilih Metode Pembayaran",
                style: TextStyle(fontSize: 14, color: Colors.white),
              )
            ),
          ),
        ],
      ),
    );
  }
}