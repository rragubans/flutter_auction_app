import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:ubid/pages/items_page.dart';
//
// import 'user_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  String email;
  String screenName;
  String middleName;
  String firstName;
  String lastName;
  String password;
  String phoneNumber;
  String zipCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 80.0,
              ),
//              CircleAvatar(
//                backgroundColor: Colors.red,
//                radius: 50.0,
//              ),
//              Padding(
//                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
//                child: Divider(),
//              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                  onChanged: (value){
                    setState(() {
                      email = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'ScreenName',
                  ),
                  onChanged: (value){
                    setState(() {
                      screenName = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'FirstName',
                  ),
                  onChanged: (value){
                    setState(() {
                      firstName = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'MiddleName',
                  ),
                  onChanged: (value){
                    setState(() {
                      middleName = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'LastName',
                  ),
                  onChanged: (value){
                    setState(() {
                      lastName = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                ),
                  onChanged: (value){
                    setState(() {
                      password = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(25)),
                  child: Text( 'Register',
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                  color: Colors.green,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      // builder: (context) => ItemsPage()
                    ));
                  },
                ),
              ),
            ],),),)
    );
  }
}