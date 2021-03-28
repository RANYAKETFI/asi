import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 35),
          Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logo.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            ' SE CONNECTER ',
            style: TextStyle(
                color: Colors.black, fontFamily: 'BodoniMT', fontSize: 20),
          ),
          SizedBox(
            height: 25,
          ),
          Form(
              child: Column(children: <Widget>[
            TextField(
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'BodoniMT',
              ),
              cursorColor: Colors.black,
              decoration: InputDecoration(
                fillColor: Colors.black,
                hintText: '  E-mail',
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontFamily: 'BodoniMT',
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'BodoniMT',
              ),
              cursorColor: Colors.black,
              decoration: InputDecoration(
                fillColor: Colors.black,
                hintText: '  Password',
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontFamily: 'BodoniMT',
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            )
          ])),
          SizedBox(height: 20),
          RaisedButton(
              highlightColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  side: BorderSide(color: Colors.white)),
              padding: EdgeInsets.all(10.0),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInScreen()),
                );
              },
              color: Color(0xff427719),
              textColor: Colors.white,
              child: Text(
                '        Se Connecter       ',
                style: TextStyle(
                  fontSize: 25,
                  //color: Colors.white,
                  fontFamily: 'BodoniMT',
                ),
              )),
        ],
      ),
      //color: Color(0xff02A89D),
    ));
  }
}
