import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gold_app/pages/beli_rupiah.dart';
import 'package:gold_app/widgets/app_large_text.dart';
import 'package:gold_app/widgets/app_text.dart';
import 'package:gold_app/widgets/reusable_widget.dart';
import 'package:gold_app/widgets/text_field_black.dart';
import 'package:gold_app/widgets/text_field_image.dart';

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
                  height: 130,
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
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        AppText(text: "Total:", color: Colors.white, size: 16,),
                        SizedBox(height: 20,),
                        AppLargeText(text: "Rp 4.665.000,-", color: Colors.white, size: 20,),
                        SizedBox(height: 8,),
                        AppText(text: "Pembelian 5.00 gr Emas", color: Colors.white, size: 15,)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AppLargeText(text: "Masukkan kode Voucher (Opsional)", size: 14,),
                      SizedBox(height: 15,),
                      TextFieldWidgetBlack(
                        hintText: 'Masukkan kode di sini',
                        obscureText: false,
                        prefixIconData: Icons.code_sharp,
                      ),
                      SizedBox(height: 30,),
                      AppLargeText(text: "Metode Pembayaran", size: 13,),
                      SizedBox(height: 15,),
                      TextFieldWidgetImage(
                        hintText: "Bank Mandiri",
                        obscureText: false,
                        prefixIconData: 'mandiri.png',
                        suffixIconData: Icons.arrow_forward_ios,
                      ),
                      SizedBox(height: 10,),
                      TextFieldWidgetImage(
                        hintText: "BCA",
                        obscureText: false,
                        prefixIconData: 'bca.png',
                        suffixIconData: Icons.arrow_forward_ios,
                      ),
                      SizedBox(height: 10,),
                      TextFieldWidgetImage(
                        hintText: "BRI",
                        obscureText: false,
                        prefixIconData: 'bri.png',
                        suffixIconData: Icons.arrow_forward_ios,
                      ),
                      SizedBox(height: 10,),
                      TextFieldWidgetImage(
                        hintText: "BNI",
                        obscureText: false,
                        prefixIconData: 'bni.png',
                        suffixIconData: Icons.arrow_forward_ios,
                      ),
                      SizedBox(height: 10,),
                      TextFieldWidgetImage(
                        hintText: "BTN",
                        obscureText: false,
                        prefixIconData: 'btn.png',
                        suffixIconData: Icons.arrow_forward_ios,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}