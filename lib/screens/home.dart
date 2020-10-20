import 'package:flutter/material.dart';
import 'my_button_widget.dart';
import 'my_location_widget.dart';
import 'my_stateful_widget.dart';

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'AutoRate';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(_title, style: TextStyle(color: Colors.black),),
            backgroundColor: Colors.white,
          ),

          body: Center(
            child: Container(
              width: 400,
              height: 400,
              child: Column(
                children: <Widget>[
                  Text('Select Category:', style: TextStyle(fontSize: 20),),
                  MyStatefulWidget(),
                  // Expanded(
                  //child: MySearchWidget(),
                  // ),
                  Expanded(
                    child: DashboardScreen(),

                  ),
                  MyButtonWidget(),
                ],
              ),
            ),
          )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}


