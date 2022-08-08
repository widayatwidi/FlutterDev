import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gold_app/pages/detail_pembelian.dart';
import 'package:gold_app/widgets/app_large_text.dart';
import 'package:gold_app/widgets/app_text.dart';
import 'package:gold_app/widgets/reusable_widget.dart';

class ConfirmBeli extends StatefulWidget {
  const ConfirmBeli({Key? key}) : super(key: key);

  @override
  State<ConfirmBeli> createState() => _ConfirmBeliState();
}

class _ConfirmBeliState extends State<ConfirmBeli> {
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
                padding: EdgeInsets.fromLTRB(30, MediaQuery.of(context).size.height * 0.03, 30, 0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white,),
                      onPressed: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => DetailBeli())
                        );
                      },
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
                    Center(
                      child: AppLargeText(text: "Konfirmasi Pembelian", color: Colors.white, size: 17,),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.9,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 229, 229)
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 251, 245, 227)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
                        child: AppText(text: "Segera selesaikan pembayaranmu, untuk melakukan pembelian emas", size: 13,),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 45, right: 45),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(text: "Berat Emas", size: 13,),
                          AppLargeText(text: "5.00 Gram", size: 13,)
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 35, right: 35),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 160,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20, left: 12, right: 12),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  AppText(text: "Nominal Pembelian", size: 13,),
                                  AppLargeText(text: "Rp 4.665.000,-", size: 13,)
                                ],
                              ),
                              SizedBox(height: 25,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  AppText(text: "Biaya Admin", size: 13,),
                                  AppLargeText(text: "Rp 3.000,-", size: 13,)
                                ],
                              ),
                              SizedBox(height: 18,),
                              Divider(
                                color: Color.fromARGB(31, 16, 16, 16),
                                thickness: 2,
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  AppText(text: "Total yang dibayar", size: 13,),
                                  AppLargeText(text: "Rp 4.668.000,-", size: 13, color: Color.fromARGB(95, 11, 58, 8),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 45, right: 45),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(text: "Cara Pembayaran", size: 13,),
                          AppLargeText(text: "Virtual Account", size: 13,)
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 35, right: 35),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Image.asset("assets/images/bank/mandiri.png", width: 60, height: 40,),
                            ),
                            SizedBox(width: 10,),
                            AppText(text: "- Virtual Account Mandiri", size: 13,)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 45, right: 45),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppText(text: "1. Pastikan data sudah benar, lalu selesaikan pembayaran", size: 13,),
                          SizedBox(height: 12,),
                          AppText(text: '2. Nomor virtual account akan muncul di langkah "Selesaikan Pembayaran"', size: 13,),
                        ],
                      )
                    ),
                    SizedBox(height: 40,),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width * 1.2,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 83, 211, 58),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(8)
                            )
                          ),
                          onPressed: (() {
                            print("Proses Beli");
                            // Navigator.push(
                            //   context, 
                            //   MaterialPageRoute(builder: (context) => ConfirmBeli())
                            // );
                          }), 
                          child: const Text(
                            "Selesaikan Pembayaran",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          )
                        ),
                      ),
                    ),
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