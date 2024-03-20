import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: 'For You'),
                Tab(text: 'Following'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ForYouTab(),
              FollowingTab(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForYouTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: FlutterLogo(),
          title: Text('Data 1'),
        ),
        ListTile(
          leading: FlutterLogo(),
          title: Text('Data 2'),
        ),
        ListTile(
          leading: FlutterLogo(),
          title: Text('Data 3'),
        ),
      ],
    );
  }
}

class FollowingTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.asset('images/IMG_4238.png')
      ],
    );
  }
}