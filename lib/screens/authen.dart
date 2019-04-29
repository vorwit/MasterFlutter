import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  Widget signUpButton() {
    return RaisedButton(
      color: Colors.orange[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      child: Text('Sign Up'),
      onPressed: () {},
    );
  }

  Widget signInButton() {
    return RaisedButton(
      color: Colors.orange[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      child: Text('Sign In'),
      onPressed: () {},
    );
  }

  Widget passwordTextFormField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
          labelText: 'password :', hintText: 'more 6 charactor'),
    );
  }

  Widget emailTextFormField() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: 'Email :', hintText: 'you@email.com'),
    );
  }

  Widget showAppName() {
    return Text(
      'Master Flutter',
      style: TextStyle(
          fontFamily: 'Schoolbell',
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          color: Colors.red[900]),
    );
  }

  Widget showLogo() {
    return Image.asset('images/logo.png');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.white], begin: Alignment(-1, -1))),
        padding: EdgeInsets.only(top: 100.0),
        alignment: Alignment(0, -1),
        child: Column(
          children: <Widget>[
            Container(
              width: 200.0,
              height: 200.0,
              child: showLogo(),
            ),
            Container(margin: EdgeInsets.only(top: 15.0), child: showAppName()),
            Container(
              margin: EdgeInsets.only(left: 50.0, right: 50.0),
              child: emailTextFormField(),
            ),
            Container(
              margin: EdgeInsets.only(left: 50.0, right: 50.0),
              child: passwordTextFormField(),
            ),
            Container(
              margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 15.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 4.0),
                      child: signInButton(),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 4.0),
                      child: signUpButton(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
