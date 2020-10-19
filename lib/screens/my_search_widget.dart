//import 'dart:math';

import 'package:flappy_search_bar/scaled_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:merchantname/screens/merchant_list.dart';

import 'flappy_search_bar.dart';

// ADD OR REMOVE LOCATIONS HERE ->
final List<String> locn = ['New York', 'New Hampshire', 'New Jersey', 'New Mexico'];

class MySearchWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Home(),
    );
  }
}

class Post {
  final String title;
  Post(this.title);
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
//  final SearchBarController<Post> _searchBarController = SearchBarController();
  bool isReplay = false;

  Future<List<Post>> _getALlPosts(String text) async {
    await Future.delayed(Duration(seconds: text.length == 4 ? 10 : 1));
    if (isReplay) return null;
    if (text.length == 5) throw Error();
    if (text.length == 6) return [];
    List<Post> posts = [];

    for (int i = 0; i < locn.length; i++) {
      posts.add(Post(locn[i]));
    }
    return posts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SearchBar<Post>(
          hintText: 'Location',
          searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
          headerPadding: EdgeInsets.symmetric(horizontal: 10),
          listPadding: EdgeInsets.symmetric(horizontal: 10),
          onSearch: _getALlPosts,
          emptyWidget: Text("empty"),
          indexedScaledTileBuilder: (int index) => ScaledTile.extent(2, 50),
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          onItemFound: (Post post, int index) {
            return ListView(
                children: [
                  Card(
                    child: ListTile(
                      dense: true,
                      title: Text(post.title),
                      onTap: () {
                        //*****************************Enter code what happens on click
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MerchantList()));
                      },
                    ),
                  ),
                ]
            );
          },
        ),
      ),
    );
  }
}

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            ),
            Text("Detail"),
          ],
        ),
      ),
    );
  }
}
