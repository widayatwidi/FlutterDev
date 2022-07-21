// import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'My App',
      home: SafeArea(child: MyScaffold()),
    )
  );
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigator Menu',
            onPressed: null,
          ),
          Expanded(child: title),
          const IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search something',
            onPressed: null,
          ),
        ],
      ),
    );
  }
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
                reusableButton(context, "Destinasi", "F24C4C"),
                // SizedBox(
                //   height: 0.05,
                // ),
                reusableButton(context, "Video", "EC9B3B"),
                // SizedBox(
                //   height: 0.05,
                // ),
                reusableButton(context, "Community", "9BA3EB"),
              ],
            ),
          ),
        ),
      ),
    );
  }


  // @override
  // Widget build(BuildContext context) {
  //   return Material(
  //     child: Column(
  //       children: [
  //         MyAppBar(
  //           title: Text(
  //             'Example Title',
  //             style: Theme.of(context).primaryTextTheme.headline6,
  //           )
  //         ),
  //         const Expanded(
  //           child: Center(
  //             child: Text('Hello World yeah!'),
  //           )
  //         ),
  //       ],
  //     ),
  //   );
  // }
}

hexStringToColor(String hexColor) {
  hexColor = hexColor.toLowerCase().replaceAll("#", "");
  if(hexColor.length == 6) {
    hexColor = "FF" + hexColor;
  }

  return Color(int.parse(hexColor, radix: 16));
}

Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 180,
    height: 180,
  );
}

Container reusableButton(BuildContext context, String desc, String coloring) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.8,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        // onTap();
      },
      child: Text(desc, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if(states.contains(MaterialState.pressed)) {
            return Colors.black26;
          }
          coloring = coloring.toLowerCase().replaceAll("#", "");
          if(coloring.length == 6) {
            coloring = "FF" + coloring;
          }

          return Color(int.parse(coloring, radix: 16));
          // return Colors.coloring;
        }),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
        )
      ),
    ),
  );
}

// yellowAccent
// blueAccent
// redAccent


// class firstApp extends StatelessWidget {
//   const firstApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // final wordPair = WordPair.random();
//     return MaterialApp(
//       title: 'Welcome to first App Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('NavBar App ya!'),
//         ),
//         body: const Center(
//           child: RandomWords(),
//         ),
//       ),
//     );
//   }
// }

// class RandomWords extends StatefulWidget {
//   const RandomWords({super.key});

//   @override
//   State<RandomWords> createState() => _RandomWordsState();
// }

// class _RandomWordsState extends State<RandomWords> {
//   final _suggestions = <WordPair>[];
//   final _biggerFont = const TextStyle(fontSize: 18);
//   @override
//   Widget build(BuildContext context) {
//     // final wordPair = WordPair.random();
//     return ListView.builder(
//       padding: const EdgeInsets.all(16.0),
//       itemBuilder: (context, i) {
//         if (i.isOdd) return const Divider();

//         final index = i ~/ 2;
//         if(index >= _suggestions.length) {
//           _suggestions.addAll(generateWordPairs().take(10));
//         }
//         return ListTile(
//           title: Text(
//             _suggestions[index].asPascalCase,
//             style: _biggerFont,
//           ),
//         );
//       },
//     );
//   }
// }