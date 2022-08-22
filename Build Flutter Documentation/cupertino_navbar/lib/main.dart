import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: MyHomePage(),
      title: "Try Persistent NavBar",
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.search)),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart))
        ],
      ),
      tabBuilder: (context, index) {
        switch(index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(child: Page1());
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(child: Page2());
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(child: Page3());
            });
          default: return CupertinoTabView(builder: (context) {
            return CupertinoPageScaffold(child: Page1());
          });
        }
      },
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(child: Text("Hello dari Page 1"))
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoButton(
        child: Text("Coba Tekan ini"), 
        onPressed: () {
          Navigator.push(context, CupertinoPageRoute(builder: (context) => Page2_1()));
        }
      )
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(child: Text("Hello dari Page 3"))
    );
  }
}

class Page2_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoButton(
        child: Text("Back"), 
        onPressed: () {
          Navigator.push(context, CupertinoPageRoute(builder: (context) => Page2()));
        }
      )
    );
  }
}

