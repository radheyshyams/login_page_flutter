import 'package:flutter/material.dart';
import 'package:login_page_flutter/homePage.dart';
import 'package:login_page_flutter/loginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final routes = <String, WidgetBuilder> {
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Sign In',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.pink[800],
      ),
      home: LoginPage(),
      routes: routes,
    );
  }

}