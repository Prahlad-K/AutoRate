import 'package:flutter/material.dart';
//import 'package:flutter_app/app_screens/my_searchable_dropdown.dart';
//import 'package:flutter_app/app_screens/test_search_bar.dart';

//import 'my_button_widget.dart';
import 'my_search_widget.dart';
import 'my_stateful_widget.dart';

//final _minimumPadding = 5.0;

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'AutoRate';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),

        body: Center(
          child: Container(
            width: 400,
            height: 400,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Select Category:'),
                MyStatefulWidget(),
                Expanded(
                  // child: MySearchWidget(),
                  child: MySearchWidget(),
                ),
//                MyButtonWidget(),
              ],
            ),
          ),
        )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

