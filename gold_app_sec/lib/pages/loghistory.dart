import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gold_app_sec/widgets/app_large_text.dart';
import 'package:gold_app_sec/widgets/app_text.dart';
import 'package:gold_app_sec/widgets/reusable_widget.dart';

class LogHistoryPage extends StatefulWidget {
  const LogHistoryPage({Key? key}) : super(key: key);

  @override
  State<LogHistoryPage> createState() => _LogHistoryPageState();
}

class _LogHistoryPageState extends State<LogHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: LinearGradient(
          colors: [
            hexStringToColor("E1D2CE"),
            hexStringToColor("E1D2CE"),
            // hexStringToColor("100720")
          ],
          begin: Alignment.topCenter, end: Alignment.bottomCenter
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: logoWidgetSmall("assets/images/logo.png"),
            ),
            SizedBox(height: 20,),
            SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.775,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        hexStringToColor("F8F2EF"),
                        hexStringToColor("F8F2EF"),
                        hexStringToColor("F8F2EF")
                      ]
                    ),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Divider(
                        indent: 120,
                        endIndent: 120,
                        color: Color.fromARGB(31, 0, 0, 0),
                        thickness: 2,
                      ),
                      SizedBox(height: 20,),
                      AppText(text: "Transaksi Terkini", size: 14,),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(text: "Menunggu Pembayaran", size: 12,),
                          AppLargeText(text: "Rp. 2.234.000,-", size: 14, color: Color.fromARGB(96, 68, 21, 21),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(text: "17 Januari 2022", size: 10,),
                          AppText(text: "5,00 gr emas", size: 10,),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Color.fromARGB(31, 55, 54, 54),
                        thickness: 1,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(text: "Menunggu Pembayaran", size: 12,),
                          AppLargeText(text: "Rp. 2.234.000,-", size: 14, color: Color.fromARGB(96, 68, 21, 21),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(text: "17 Januari 2022", size: 10,),
                          AppText(text: "5,00 gr emas", size: 10,),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Color.fromARGB(31, 55, 54, 54),
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(text: "Menunggu Pembayaran", size: 12,),
                          AppLargeText(text: "Rp. 2.234.000,-", size: 14, color: Color.fromARGB(96, 68, 21, 21),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(text: "17 Januari 2022", size: 10,),
                          AppText(text: "5,00 gr emas", size: 10,),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Color.fromARGB(31, 55, 54, 54),
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(text: "Menunggu Pembayaran", size: 12,),
                          AppLargeText(text: "Rp. 2.234.000,-", size: 14, color: Color.fromARGB(96, 68, 21, 21),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(text: "17 Januari 2022", size: 10,),
                          AppText(text: "5,00 gr emas", size: 10,),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Color.fromARGB(31, 55, 54, 54),
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(text: "Menunggu Pembayaran", size: 12,),
                          AppLargeText(text: "Rp. 2.234.000,-", size: 14, color: Color.fromARGB(96, 68, 21, 21),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(text: "17 Januari 2022", size: 10,),
                          AppText(text: "5,00 gr emas", size: 10,),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Color.fromARGB(31, 55, 54, 54),
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(text: "Menunggu Pembayaran", size: 12,),
                          AppLargeText(text: "Rp. 2.234.000,-", size: 14, color: Color.fromARGB(96, 68, 21, 21),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(text: "17 Januari 2022", size: 10,),
                          AppText(text: "5,00 gr emas", size: 10,),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        color: Color.fromARGB(31, 55, 54, 54),
                        thickness: 1,
                      ),
                      
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}