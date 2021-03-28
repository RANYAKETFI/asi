import 'package:flutter/material.dart';
//import 'package:nice_button/nice_button.dart';
import 'package:asi/frontend//HomeScreen.dart';
import 'package:asi/frontend/authenticate/Signin.dart';

class Chose extends StatefulWidget {
  @override
  _ChoseState createState() => _ChoseState();
}

class _ChoseState extends State<Chose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Color(0xff02A89D),
        child: Column(
          children: <Widget>[
            SizedBox(height: 600),
            Container(
              height: 2 * MediaQuery.of(context).size.height / 8,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  RaisedButton(
                      highlightColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                          side: BorderSide(color: Colors.white)),
                      padding: EdgeInsets.all(20.0),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInScreen()),
                        );
                      },
                      color: Color(0xff427719),
                      textColor: Colors.white,
                      child: Text(
                        '               Se Connecter              ',
                        style: TextStyle(
                          fontSize: 25,
                          //color: Colors.white,
                          fontFamily: 'BodoniMT',
                        ),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInScreen()),
                        );
                      },
                      highlightColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                          side: BorderSide(
                            color: Color(0xff427719),
                          )),
                      padding: EdgeInsets.all(20.0),
                      color: Color(0xffffffff),
                      textColor: Colors.white,
                      child: Text(
                        '                 S`inscrire                 ',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xff427719),
                          fontFamily: 'BodoniMT',
                        ),
                      )),
                ],
              ),
            ),
            Text(
              'Vous n`avez pas de compte? inscrivez-vous .',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xff000000),
                fontFamily: 'BodoniMT',
              ),
            )
          ],
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/top.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
