import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:merchantname/screens/merchant_list.dart';

//import 'my_search_widget.dart';

/// This is the button widget that the main application instantiates.
class MyButtonWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        //************************ENTER CODE FOR WHAT HAPPENS ON CLICK
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MerchantList()));
      },
      textColor: Colors.white,
      padding: const EdgeInsets.all(0.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(58, 66, 86, 1.0)
        ),
        padding: const EdgeInsets.all(10.0),
        child:
        const Text('Submit', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}