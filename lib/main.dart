import 'package:flutter/material.dart';
import 'package:finalyear_flutter/loginpage.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: 'loginpage',
    routes: {
      'loginpage': (context) =>  Loginpage()},
  ));
}

