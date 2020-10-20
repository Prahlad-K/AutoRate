import 'package:flutter/material.dart';
import 'package:merchantname/screens/merchant_detail.dart';

class MerchantList extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Merchant List - New York',
      //theme: new ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
      home: new ListPage(title: 'Merchant List - New York'),
    );
  }
}

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.1,
        //backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text(widget.title, style: TextStyle(color: Colors.black),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {},
          )
        ],
      ),

      body: makeBody,

      bottomNavigationBar: makeBottom,

    );
  }
}

final makeBody = Container(
  child: ListView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemCount: 10,
    itemBuilder: (BuildContext context, int index) {
      final makeCard = Card(
        elevation: 8.0,
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            leading: Container(
              padding: EdgeInsets.only(right: 12.0),
              decoration: new BoxDecoration(
                  border: new Border(
                      right: new BorderSide(width: 1.0, color: Colors.white24))),
              child: Icon(Icons.local_mall, color: Colors.white),
            ),
            title:            Text("Starbucks",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),

            ),
            // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

            subtitle: Row(
              children: <Widget>[
//        Icon(Icons.linear_scale, color: Colors.yellowAccent),
                Text("Street 9, Downtown New York", style: TextStyle(color: Colors.white)),
              ],
            ),


            trailing: Text("8.5/10", style: TextStyle(color: Colors.white)),
            onTap: () {
              //*****************************Enter code what happens on click
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => MerchantDetail()));
            },
//    isThreeLine: true,
          ),
        ),
      );

      return makeCard;
    },
  ),
);



final makeBottom = Container(
  height: 55.0,
  child: BottomAppBar(
    color: Color.fromRGBO(58, 66, 86, 1.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.home, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.account_box, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.trending_up, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.favorite_border, color: Colors.white),
          onPressed: () {},
        ),

      ],
    ),
  ),
);