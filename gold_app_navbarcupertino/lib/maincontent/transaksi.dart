import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gold_app_navbarcupertino/transaksipages/transaksibeli.dart';
import 'package:gold_app_navbarcupertino/widgets/app_large_text.dart';
import 'package:gold_app_navbarcupertino/widgets/app_text.dart';
import 'package:gold_app_navbarcupertino/widgets/reusable_widget.dart';

class TransaksiPage extends StatefulWidget {
  const TransaksiPage({Key? key}) : super(key: key);

  @override
  State<TransaksiPage> createState() => _TransaksiPageState();
}

class _TransaksiPageState extends State<TransaksiPage> {
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
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Positioned(
            top: 50,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.88,
              height: 280,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    hexStringToColor("FBF7F6"),
                    hexStringToColor("FBF7F6"),
                  ]
                ),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 215),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 60, right: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          AppText(text: "Harga Beli", color: Color.fromARGB(255, 107, 105, 105), size: 10,),
                          AppText(text: "Harga Jual", color: Color.fromARGB(255, 107, 105, 105), size: 10,),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 45, right: 45),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          AppLargeText(text: "Rp 934.000,-", size: 12,),
                          AppLargeText(text: "Rp 867.000,-", size: 12,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.88,
              height: 190,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    hexStringToColor("FFFFFF"),
                    hexStringToColor("FFFFFF"),
                  ]
                ),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(
                  children: <Widget>[
                    AppLargeText(text: "Transaksi", size: 15,),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => TransaksiBeli())
                                );
                              },
                              child: CircleAvatar(
                                backgroundColor: Color.fromARGB(255, 249, 150, 113),
                                radius: 18,
                                child: CircleAvatar(
                                  radius: 17.5,
                                  // backgroundImage: AssetImage("assets/images/check-ok.jpeg"),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            AppText(text: "Beli Emas", size: 9,)
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color.fromARGB(255, 201, 186, 182),
                              radius: 18,
                              child: CircleAvatar(
                                radius: 17.5,
                                // backgroundImage: AssetImage("assets/images/check-ok.jpeg"),
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            SizedBox(height: 5,),
                            AppText(text: "Transaksi Emas", size: 9,)
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color.fromARGB(255, 254, 235, 228),
                              radius: 18,
                              child: CircleAvatar(
                                radius: 17.5,
                                // backgroundImage: AssetImage("assets/images/check-ok.jpeg"),
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            SizedBox(height: 5,),
                            AppText(text: "Jual Emas", size: 9,)
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color.fromARGB(255, 235, 255, 111),
                              radius: 18,
                              child: CircleAvatar(
                                radius: 17.5,
                                // backgroundImage: AssetImage("assets/images/check-ok.jpeg"),
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            SizedBox(height: 5,),
                            AppText(text: "Cetak Emas", size: 9,)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 350,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.88,
              height: 60,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    hexStringToColor("F2E9E7"),
                    hexStringToColor("F2E9E7"),
                  ]
                ),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 105,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          hexStringToColor("FBFCFB"),
                          hexStringToColor("FBFCFB"),
                        ]
                      ),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(
                      child: TextButton(
                        child: Text("5 Tahun", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 12),),
                        onPressed: () {
                          // Navigator.push(
                          //   context, 
                          //   MaterialPageRoute(builder: (context) => BeliRup())
                          // );
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: 105,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          hexStringToColor("F2E9E7"),
                          hexStringToColor("F2E9E7"),
                        ]
                      ),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(
                      child: TextButton(
                        child: Text("1 Tahun", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 12),),
                        onPressed: () {
                          // Navigator.push(
                          //   context, 
                          //   MaterialPageRoute(builder: (context) => BeliRup())
                          // );
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: 105,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          hexStringToColor("F2E9E7"),
                          hexStringToColor("F2E9E7"),
                        ]
                      ),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(
                      child: TextButton(
                        child: Text("5 Bulan", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 12),),
                        onPressed: () {
                          // Navigator.push(
                          //   context, 
                          //   MaterialPageRoute(builder: (context) => BeliRup())
                          // );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}