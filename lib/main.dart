import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screens/authen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome .setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]);
    return MaterialApp(
      title: 'Vorwit Firbase',
      home: Authen(),
    );
  }
}
