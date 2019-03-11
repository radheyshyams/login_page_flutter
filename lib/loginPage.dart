import 'package:flutter/material.dart';
import 'package:login_page_flutter/homePage.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'Login-Page';
  @override
  _LoginPageState createState () => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 75,
        child: Image.asset('assets/abc.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26.0)),
        prefixIcon: Padding(
          padding: EdgeInsets.all(0.0),
          child: Icon(
            Icons.person,
            color: Colors.red,
          ),
        ),
        hintText: 'Email.Address',
        labelText: 'Email',
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26.0)),
        prefixIcon: Padding(
          padding: EdgeInsets.all(0.0),
          child: Icon(
            Icons.lock,
            color: Colors.red,
          ),
        ),
        hintText: 'Pasword',
        labelText: 'Pasword',
      ),
    );

    final button = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: <Widget>[
          SizedBox(
            height: 56.0,
            width: 160.0,
            child: RaisedButton(
              padding: EdgeInsets.all(15.0),
              color: Colors.white70,

              child: Text('SignUp',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,

                  )),
              onPressed: (){
                Navigator.of(context).pushNamed(HomePage.tag);
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
          ),

          SizedBox(
            width: 160.0,
            height: 56.0,
            child: RaisedButton(
              padding: EdgeInsets.all(15.0),
              color: Colors.white70,
              child: Text('LogIn',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,

                  )),
              onPressed: (){
                Navigator.of(context).pushNamed(HomePage.tag);
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
          ),

        ],
      ),
    );
    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password',
        style: TextStyle(
          color: Colors.indigo[600],
          fontSize: 24,
        ),
      ),
      onPressed: () {},
    );


    return Scaffold(

      body: Container(
        // For BackGround Color Decoration.
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            stops: [0.2, 0.5, 0.7, 0.9],
            tileMode: TileMode.clamp,
            colors: [
              Colors.pink[200],
              Colors.blue[400],
              Colors.green[400],
              Colors.red[400],
            ],
          ),
        ),

        child: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              logo,
              SizedBox(height: 48.0),
              email,
              SizedBox(height: 10.0),
              password,
              SizedBox(height: 24.0),
              button,
              forgotLabel
            ],
          ),
        ),
      ),
    );
  }
}