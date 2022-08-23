import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gold_app_navbarcupertino/transaksipages/transaksibeli.dart';
import 'package:gold_app_navbarcupertino/widgets/app_large_text.dart';
import 'package:gold_app_navbarcupertino/widgets/app_text.dart';
import 'package:gold_app_navbarcupertino/widgets/reusable_widget.dart';
import 'package:gold_app_navbarcupertino/widgets/text_field_abu.dart';
import 'package:gold_app_navbarcupertino/widgets/text_field_image.dart';

class MetodeBayar extends StatefulWidget {
  const MetodeBayar({Key? key}) : super(key: key);

  @override
  State<MetodeBayar> createState() => _MetodeBayarState();
}

class _MetodeBayarState extends State<MetodeBayar> {
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
                        CupertinoPageRoute(builder: (context) => TransaksiBeli())
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
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
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(text: "Masukkan Kode Voucher (Opsional)", size: 12,),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextFieldWidgetAbu(
                hintText: 'Masukkan kode di sini',
                obscureText: false,
                prefixIconData: Icons.price_change_outlined,
              ),
            ),
            SizedBox(height: 25,),
            Center(
              child: AppLargeText(text: "Pilih Metode Pembayaran", size: 13,),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35, bottom: 40),
              child: Column(
                children: <Widget>[
                  TextFieldWidgetImage(
                    hintText: "Bank Mandiri",
                    obscureText: false,
                    prefixIconData: 'mandiri.png',
                    // suffixIconData: Icons.arrow_forward_ios,
                  ),
                  SizedBox(height: 10,),
                  TextFieldWidgetImage(
                    hintText: "Bank Jago",
                    obscureText: false,
                    prefixIconData: 'jago.png',
                    // suffixIconData: Icons.arrow_forward_ios,
                  ),
                  SizedBox(height: 10,),
                  TextFieldWidgetImage(
                    hintText: "BRI",
                    obscureText: false,
                    prefixIconData: 'bri.png',
                    // suffixIconData: Icons.arrow_forward_ios,
                  ),
                  SizedBox(height: 10,),
                  TextFieldWidgetImage(
                    hintText: "BNI",
                    obscureText: false,
                    prefixIconData: 'bni.png',
                    // suffixIconData: Icons.arrow_forward_ios,
                  ),
                  SizedBox(height: 10,),
                  TextFieldWidgetImage(
                    hintText: "BTN",
                    obscureText: false,
                    prefixIconData: 'btn.png',
                    // suffixIconData: Icons.arrow_forward_ios,
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
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
                        "Bayar Sekarang",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      )
                    ),
                  ),
                  SizedBox(height: 40,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}