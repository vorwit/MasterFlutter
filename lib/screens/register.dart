import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
//Explicit
  final formKey = GlobalKey<FormState>();

  Widget passwordTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            color: Colors.blue,
          ),
          labelText: 'Password :',
          hintText: 'More 6 Charactor',
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(width: 1.0, color: Colors.grey))),
    );
  }

  Widget emailTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(width: 1.0, color: Colors.grey)),
          labelText: 'Email :',
          hintText: 'you@email.com',
          icon: Icon(
            Icons.email,
            color: Colors.green,
          )),
    );
  }

  Widget nameTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(width: 1.0, color: Colors.grey)),
          labelText: 'Name :',
          hintText: 'Type Your Name',
          icon: Icon(
            Icons.face,
            color: Colors.red,
          )),validator: (String value){
            if (value.length == 0) {
              return 'Please Fill Name In The Blank';
            }
          },
    );
  }

  Widget uploadButton() {
    return IconButton(
      icon: Icon(Icons.cloud_upload),
      tooltip: 'Upload To Firebase',
      onPressed: () {
        print('You Click Upload');
        if (formKey.currentState.validate()) {
          
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Register'),
          actions: <Widget>[uploadButton()],
        ),
        body: Form(
          child: Container(
            decoration: BoxDecoration(
                gradient: RadialGradient(
                    colors: [Colors.white, Colors.purple[900]],
                    radius: 1.5,
                    center: Alignment(0, -1))),
            padding: EdgeInsets.all(50.0),
            child: Column(
              children: <Widget>[
                nameTextFormField(),
                Container(
                  margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: emailTextFormField(),
                ),
                passwordTextFormField()
              ],
            ),
          ),
        ));
  }
}
