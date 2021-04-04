import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sevale Auction Site 1.0',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Sevale Auction Site 1.0'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
          title: Text(widget.title),
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
              Text("New User ? Create Account")
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

  FlatButton getForgotPassword() {
    return new FlatButton(
      onPressed: () {},
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
      child: FlatButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => MyHomePage()));
        },
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }

  SizedBox getSizedBox() {
    return new SizedBox(
      height: 130,
    );
  }
}
