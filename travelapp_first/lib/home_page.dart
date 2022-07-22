import 'package:flutter/material.dart';
import 'package:travelapp_first/reusable_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: LinearGradient(
          colors: [
            hexStringToColor("2E0249"),
            hexStringToColor("570A57"),
            hexStringToColor("A91079")
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        )),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("/assets/img/icon.png")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
