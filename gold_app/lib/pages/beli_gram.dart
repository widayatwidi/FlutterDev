import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gold_app/pages/beli_gram.dart';
import 'package:gold_app/pages/beli_rupiah.dart';
import 'package:gold_app/pages/login.dart';
import 'package:gold_app/pages/profile.dart';
import 'package:gold_app/widgets/app_large_text.dart';
import 'package:gold_app/widgets/app_text.dart';
import 'package:gold_app/widgets/reusable_widget.dart';
import 'package:gold_app/widgets/text_field.dart';
import 'package:gold_app/widgets/text_field_black.dart';

class BeliGram extends StatefulWidget {
  const BeliGram({Key? key}) : super(key: key);

  @override
  State<BeliGram> createState() => _BeliGramState();
}

class _BeliGramState extends State<BeliGram> {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: [
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
                            MaterialPageRoute(builder: (context) => ProfilePage())
                          );
                        },
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.17,),
                      Center(
                        child: AppLargeText(text: "Beli Emas", color: Colors.white, size: 17,),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          AppText(text: "Harga Beli Saat ini", color: Colors.white, size: 14,),
                          SizedBox(height: 5,),
                          AppText(text: "Per 11/03/2022 08:49", color: Colors.white, size: 12,)
                        ],
                      ),
                      SizedBox(width: 8,),
                      IconButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context, 
                          //   MaterialPageRoute(builder: (context) => BeliGram())
                          // );
                        },
                        icon: Icon(Icons.arrow_circle_right, color: Color.fromARGB(255, 77, 200, 58),), 
                      ),
                      SizedBox(width: 4,),
                      AppLargeText(text: "Rp 936.000,-/gr", color: Colors.white, size: 16,)
                    ],
                  ),
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.76,
                      decoration: BoxDecoration(
                        color: Colors.white
                      ),
                    ),
                    Positioned(
                      top: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
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
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 30,
                      right: 30,
                      child: Container(
                        width: 380,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 205, 204, 201),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(left: 6),
                              width: 148,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 205, 204, 201),
                                borderRadius: BorderRadius.circular(30)
                              ),
                              child: Center(
                                child: TextButton(
                                  child: Text("Nominal", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                                  onPressed: () {
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(builder: (context) => BeliRup())
                                    );
                                  },
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 6),
                              width: 148,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 68, 67, 66),
                                borderRadius: BorderRadius.circular(30)
                              ),
                              child: Center(
                                child: TextButton(
                                  child: Text("Gram", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                                  onPressed: () {
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(builder: (context) => BeliGram())
                                    );
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 120,
                      left: 33,
                      right: 33,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: AppLargeText(text: "Gram yang diinginkan", size: 14,),
                          ),
                          SizedBox(height: 15,),
                          TextFieldWidgetBlack(
                            hintText: 'Isi nominal',
                            obscureText: false,
                            prefixIconData: Icons.price_change_outlined,
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Text("Minimal gram 0.0536 gr", textAlign: TextAlign.left, style: TextStyle(fontSize: 12),),
                          ),
                          SizedBox(height: 25,),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 205, 204, 201),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15, top: 12),
                              child: Text("Harga", style: TextStyle(fontSize: 13),),
                            ),
                          ),
                          SizedBox(height: 15,),



                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}