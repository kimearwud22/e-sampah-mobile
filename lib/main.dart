// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable, use_key_in_widget_constructors, prefer_final_fields, unused_field, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/Splash_Screen.dart';
import 'package:hexcolor/hexcolor.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Color _primaryColor = HexColor('#DC54FE');
  Color _accentColor = HexColor('#8A02AE');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      home: SplashScreen(title: ' Login '),
    );
  }
}
