import 'package:flutter/material.dart';
import 'package:travelapp_second/pages/destinasi.dart';
import 'package:travelapp_second/pages/video.dart';
import 'package:travelapp_second/reusable_widget.dart';

void main() {
  runApp(
    const MaterialApp(
      home: SafeArea(child: MyScaffold()),
    )
  );
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

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
          begin: Alignment.topCenter, end: Alignment.bottomCenter
        )),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/icon.png"),
                SizedBox(
                  height: 40,
                ),
                // reusableButton(context, "Destinasi", "F24C4C"),
                // reusableButton(context, "Video", "EC9B3B"),
                // reusableButton(context, "Community", "9BA3EB"),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => DestinasiPage())
                      );
                    },
                    child: Text("Destinasi", style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith((states) {
                        if(states.contains(MaterialState.pressed)) {
                          return Colors.black26;
                        }
                        return Colors.green;
                      }),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                      )
                    ),
                  )
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => VideoPage())
                      );
                    },
                    child: Text("Video", style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith((states) {
                        if(states.contains(MaterialState.pressed)) {
                          return Colors.black26;
                        }
                        return Colors.redAccent;
                      }),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                      )
                    ),
                  )
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context, 
                      //   MaterialPageRoute(builder: (context) => DestinasiPage())
                      // );
                    },
                    child: Text("Community", style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith((states) {
                        if(states.contains(MaterialState.pressed)) {
                          return Colors.black26;
                        }
                        return Colors.blueGrey;
                      }),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                      )
                    ),
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}