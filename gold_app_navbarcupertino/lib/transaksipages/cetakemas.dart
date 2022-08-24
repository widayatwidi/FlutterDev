import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gold_app_navbarcupertino/maincontent/transaksi.dart';
import 'package:gold_app_navbarcupertino/transaksipages/detailcetak.dart';
import 'package:gold_app_navbarcupertino/widgets/app_large_text.dart';
import 'package:gold_app_navbarcupertino/widgets/app_text.dart';
import 'package:gold_app_navbarcupertino/widgets/reusable_widget.dart';
import 'package:gold_app_navbarcupertino/widgets/text_field_abu.dart';

class CetakEmas extends StatefulWidget {
  const CetakEmas({Key? key}) : super(key: key);

  @override
  State<CetakEmas> createState() => _CetakEmasState();
}

class _CetakEmasState extends State<CetakEmas> {
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
                    AppText(text: "Emasmu hari ini:", size: 12, color: Colors.white,),
                    SizedBox(height: 10,),
                    AppLargeText(text: "5 Kg Emas", size: 16, color: Colors.white,),
                    SizedBox(height: 10,),
                    AppText(text: "Senilai Rp 10.000.000,-", size: 14, color: Colors.white,),
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
                  AppText(text: "Cetak Emas senilai", size: 12,),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextFieldWidgetAbu(
                hintText: 'Masukkan berat emas',
                obscureText: false,
                prefixIconData: Icons.price_change_outlined,
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppLargeText(text: "Pilih berat lainnya", size: 12,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Container(
                height: 150,
                child: GridView.count(
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  childAspectRatio: 2/1,
                  children: [
                    for (var list in listGram)
                      Container(
                        margin: const EdgeInsets.only(left: 4, right: 4, bottom: 8),
                        // width: MediaQuery.of(context).size.width * 0.28,
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              hexStringToColor("FBF7F6"),
                              hexStringToColor("FBF7F6"),
                            ]
                          ),
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: Color.fromARGB(200, 254, 153, 117),)
                        ),
                        child: Center(
                          child: AppText(text: '$list', color: Color.fromARGB(200, 254, 153, 117), size: 12,),
                        ),
                      )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Container(
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
                      MaterialPageRoute(builder: (context) => DetailCetak())
                    );
                  }), 
                  child: const Text(
                    "Cetak",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final listGram = ['0.5 Gr', '1 Gr', '10 Gr', '100 Gr', '150 Gr', '200 Gr', '250 Gr', '500 Gr', '1 Kg'];