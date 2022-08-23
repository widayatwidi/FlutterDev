import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gold_app_navbarcupertino/maincontent/historylog.dart';
import 'package:gold_app_navbarcupertino/maincontent/homepage.dart';
import 'package:gold_app_navbarcupertino/maincontent/profile.dart';
import 'package:gold_app_navbarcupertino/maincontent/transaksi.dart';
import 'package:gold_app_navbarcupertino/widgets/app_large_text.dart';
import 'package:gold_app_navbarcupertino/widgets/app_text.dart';
import 'package:gold_app_navbarcupertino/widgets/reusable_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled)),
          BottomNavigationBarItem(icon: Icon(Icons.assessment_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.auto_graph_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.person))
        ],
      ),
      tabBuilder: (context, index) {
        switch(index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(child: HomePage());
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(child: HistoryPage());
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(child: TransaksiPage());
            });
          case 3:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(child: ProfilePage());
            });
          default: return CupertinoTabView(builder: (context) {
            return CupertinoPageScaffold(child: HomePage());
          });
        }
      },
    );
  }
}

// class Page2_1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: CupertinoButton(
//         child: Text("Back"), 
//         onPressed: () {
//           Navigator.push(context, CupertinoPageRoute(builder: (context) => HistoryPage()));
//         }
//       )
//     );
//   }
// }