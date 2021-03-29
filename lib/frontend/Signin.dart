import 'package:asi/services/auth.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {


  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';

  // text field state
  String email = '';
  String password = '';

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
              key: _formKey,
              child: Column(children: <Widget>[
            TextFormField(
              validator: (val) => val.isEmpty ? 'Enter an email' : null,
                onChanged: (val) {
                  setState(() => email = val);
                },
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
            TextFormField(
              obscureText: true,
                validator: (val) => val.length < 6 ? 'Enter a password 6+ chars long' : null,
                onChanged: (val) {
                  setState(() => password = val);
                },
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
              onPressed: () async {
              
                if(_formKey.currentState.validate()){
                    dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                    if(result == null) {
                      setState(() {
                        error = 'Could not sign in with those credentials';
                      });
                    }
                    else{
                      Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInScreen()),
                );
                    }
                  }
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
               SizedBox(height: 12.0),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              ),
        ],
      ),
      //color: Color(0xff02A89D),
    ));
  }
}
