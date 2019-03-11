import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  static String tag = 'Homepage';

  @override
  Widget build(BuildContext context) {
    final hero = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 96.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/github-logo.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome Card Show',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final card = Padding(
      padding: EdgeInsets.all(15.0),

      child: Card(
        color: Colors.lightBlue,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Billionair Boy'),
              subtitle: Text('Owner Of Billions Faith'),

            ),
            const RaisedButton(
              color: Colors.orange,
              child: const Text(
                'Touch me',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),

              //onPressed: () {} ,
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(28.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.purple[200],
            Colors.pinkAccent[200],
          ]),
        ),
        child: Column(
          children: <Widget>[hero, welcome, card],
        ),
      ),
    );
  }
}
