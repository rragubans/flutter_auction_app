import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auction_app/pages/register_user_page.dart';

import 'forgot_password_page.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _user = new TextEditingController();
  TextEditingController _password = new TextEditingController();

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
          title: Text('Sevale Auction Site 1.0'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              getImagePadding(),
              getUserPadding(),
              getPasswordPadding(),
              getForgotPassword(),
              getLogin(),
              getSizedBox(),
              getNewAccount()
            ],
          ),
        ));
  }

  Padding getImagePadding() {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0),
      child: Center(
        child: Container(
            width: 200,
            height: 150,
            child: Image.asset('assets/images/logo.png')),
      ),
    );
  }

  Padding getUserPadding() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new TextField(
              controller: _user,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter valid email id as abc@gmail.com'),
            ),
          )
        ],
      ),
    );
  }

  Padding getPasswordPadding() {
    return Padding(
      padding:
      const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new TextField(
              controller: _password,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter Secure Password'),
            ),
          )
        ],
      ),
    );
  }

  Container getTextPadding() {
    return new Container(
      padding: new EdgeInsets.all(32.0),
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text("Please Login"),
            new Row(
              children: <Widget>[
                new Text('User:'),
                new Expanded(
                    child: new TextField(
                      controller: _user,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }

  TextButton getForgotPassword() {
    return new TextButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => ForgotPasswordPage()));
      },
      child: Text(
        'Forgot Password',
        style: TextStyle(color: Colors.blue, fontSize: 15),
      ),
    );
  }

  Container getLogin() {
    return new Container(
      width: 250,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(20)),
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => LoginPage()));
        },
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }

  TextButton getNewAccount() {
    return new TextButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => RegisterPage()));
      },
      child: Text(
        'New User?  Create Account',
        style: TextStyle(color: Colors.black, fontSize: 15),
      ),
    );
  }
  SizedBox getSizedBox() {
    return new SizedBox(
      height: 130,
    );
  }
}
