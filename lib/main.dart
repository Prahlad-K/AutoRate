/*import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/

///// Flutter code sample for ListTile
//
//// Here is an example of an article list item with multiline titles and
//// subtitles. It utilizes [Row]s and [Column]s, as well as [Expanded] and
//// [AspectRatio] widgets to organize its layout.
////
//// ![Custom list item b](https://flutter.github.io/assets-for-api-docs/assets/widgets/custom_list_item_b.png)
//
//import 'package:flutter/material.dart';
//
//void main() => runApp(MyApp());
//
///// This is the main application widget.
//class MyApp extends StatelessWidget {
//  static const String _title = 'Merchant Search Results';
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: _title,
//      home: Scaffold(
//        appBar: AppBar(title: const Text(_title)),
//        body: MyStatelessWidget(),
//      ),
//    );
//  }
//}
//
//class _MerchantDescription extends StatelessWidget {
//  _MerchantDescription({
//    Key key,
//    this.name,
//    this.location,
//    this.ratingX,
//    this.ratingY,
//    this.ratingZ,
//  }) : super(key: key);
//
//  final String name;
//  final String location;
//  final int ratingX;
//  final int ratingY;
//  final int ratingZ;
//
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      crossAxisAlignment: CrossAxisAlignment.start,
//      children: <Widget>[
//        Expanded(
//          flex: 1,
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              Text(
//                '$name',
//                maxLines: 2,
//                overflow: TextOverflow.ellipsis,
//                style: const TextStyle(
//                  fontWeight: FontWeight.bold,
//                ),
//              ),
//              const Padding(padding: EdgeInsets.only(bottom: 2.0)),
//              Text(
//                '$location',
//                maxLines: 2,
//                overflow: TextOverflow.ellipsis,
//                style: const TextStyle(
//                  fontSize: 12.0,
//                  color: Colors.black54,
//                ),
//              ),
//            ],
//          ),
//        ),
//        Expanded(
//          flex: 1,
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            mainAxisAlignment: MainAxisAlignment.end,
//            children: <Widget>[
//              Text(
//                '$ratingX',
//                style: const TextStyle(
//                  fontSize: 12.0,
//                  color: Colors.black87,
//                ),
//              ),
//              Text(
//                '$ratingY - $ratingZ',
//                style: const TextStyle(
//                  fontSize: 12.0,
//                  color: Colors.black54,
//                ),
//              ),
//            ],
//          ),
//        ),
//      ],
//    );
//  }
//}
//
//class CustomListItemTwo extends StatelessWidget {
//  CustomListItemTwo({
//    Key key,
//    this.thumbnail,
//    this.name,
//    this.location,
//    this.ratingX,
//    this.ratingY,
//    this.ratingZ,
//  }) : super(key: key);
//
//  final Widget thumbnail;
//  final String name;
//  final String location;
//  final int ratingX;
//  final int ratingY;
//  final int ratingZ;
//
//  @override
//  Widget build(BuildContext context) {
//    return Padding(
//      padding: const EdgeInsets.symmetric(vertical: 10.0),
//      child: SizedBox(
//        height: 100,
//        child: Row(
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[
//            AspectRatio(
//              aspectRatio: 1.0,
//              child: thumbnail,
//            ),
//            Expanded(
//              child: Padding(
//                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
//                child: _MerchantDescription(
//                  name: name,
//                  location: location,
//                  ratingX: ratingX,
//                  ratingY: ratingY,
//                  ratingZ: ratingZ,
//                ),
//              ),
//            )
//          ],
//        ),
//      ),
//    );
//  }
//}
//
///// This is the stateless widget that the main application instantiates.
//class MyStatelessWidget extends StatelessWidget {
//  MyStatelessWidget({Key key}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return ListView(
//      padding: const EdgeInsets.all(10.0),
//      children: <Widget>[
//        CustomListItemTwo(
//          thumbnail: Container(
//            decoration: const BoxDecoration(color: Colors.brown),
//          ),
//          name: 'Starbucks',
//          location: 'Store 30, Street 9, Avenue X, Downtown Los Angeles',
//          ratingX: 7,
//          ratingY: 6,
//          ratingZ: 8,
//        ),
//        CustomListItemTwo(
//          thumbnail: Container(
//            decoration: const BoxDecoration(color: Colors.blue),
//          ),
//          name: 'Dunkin Donuts',
//          location: 'Store 32, Street 10, Avenue Y, Downtown Los Angeles',
//          ratingX: 8,
//          ratingY: 6,
//          ratingZ: 7,
//        ),
//      ],
//    );
//  }
//}

import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() => runApp(MyApp());
