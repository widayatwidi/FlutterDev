import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gold_app_sec/widgets/app_large_text.dart';
import 'package:gold_app_sec/widgets/app_text.dart';
import 'package:gold_app_sec/widgets/reusable_widget.dart';

class MainDashboardPage extends StatefulWidget {
  const MainDashboardPage({Key? key}) : super(key: key);

  @override
  State<MainDashboardPage> createState() => _MainDashboardPageState();
}

class _MainDashboardPageState extends State<MainDashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Positioned(
            top: 40,
            child: logoWidgetSmall("assets/images/logo.png"),
          ),
          Positioned(
            top: 140,
            left: 83,
            right: 83,
            child: Text("Selamat Datang, Revi!", style: TextStyle(fontSize: 27),textAlign: TextAlign.center,),
          ),
          Positioned(
            top: 220,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.85,
              height: 150,
              decoration: BoxDecoration(
                // color: Color.fromARGB(31, 254, 153, 117),
                gradient: LinearGradient(
                  colors: [
                    hexStringToColor("FE9975"),
                    hexStringToColor("FE9975"),
                    hexStringToColor("FE9975")
                  ]
                ),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 20),
                    child: AppText(text: "Emas saya", color: Color.fromARGB(255, 218, 214, 214), size: 14,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 10),
                    child: AppLargeText(text: "24,00 gr", color: Color.fromARGB(255, 247, 240, 240), size: 14,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 10),
                    child: AppLargeText(text: "Rp 14.000.000,-", color: Color.fromARGB(255, 245, 242, 242), size: 18,),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 340,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(text: "Keuntungan", size: 13,),
                    AppLargeText(text: "Rp 2.345.000,-", size: 13, color: Color.fromARGB(137, 123, 36, 36),)
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 450,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    hexStringToColor("F8F2EF"),
                    hexStringToColor("F8F2EF"),
                    hexStringToColor("F8F2EF")
                  ]
                ),
                borderRadius: BorderRadius.circular(20)
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
                    AppText(text: "Notifikasi Terkini", size: 14,),
                    SizedBox(height: 20,),
                    AppLargeText(text: "Penjualan Emas #12344", size: 12,),
                    SizedBox(height: 10,),
                    AppText(text: "17 Januari 2022", size: 10,),
                    SizedBox(height: 10,),
                    Divider(
                      color: Color.fromARGB(31, 55, 54, 54),
                      thickness: 1,
                    ),
                    SizedBox(height: 10,),
                    AppLargeText(text: "Beli Rumah Impian", size: 12,),
                    SizedBox(height: 10,),
                    AppText(text: "20 Januari 2022", size: 10,),
                    SizedBox(height: 10,),
                    Divider(
                      color: Color.fromARGB(31, 55, 54, 54),
                      thickness: 1,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}