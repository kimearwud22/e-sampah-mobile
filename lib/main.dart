// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable, use_key_in_widget_constructors, prefer_final_fields, unused_field, deprecated_member_use, unnecessary_const, avoid_unnecessary_containers, prefer_const_constructors, override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/Login.dart';
import 'package:flutter_application_1/component/SignUp.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Color _primaryColor = HexColor('#00A8FF');
  Color _accentColor = HexColor('#8A02AE');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Sampah',
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade600,
        primarySwatch: Colors.grey,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Sampah'),
        centerTitle: true,
        backgroundColor: HexColor('#00A8FF'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Icon(
              Icons.local_drink,
              size: 100,
              color: HexColor('#00A8FF'),
            ),
            Container(
              child: Text(
                'Selamat datang di aplikasi E-Sampah',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: HexColor('#00A8FF'),
                ),
              ),
              margin: const EdgeInsets.only(top: 30),
            ),
            Container(
              child: Text(
                'Silahkan pilih menu yang ingin anda lakukan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: HexColor('#00A8FF'),
                ),
              ),
              margin: const EdgeInsets.only(top: 30),
            ),
            Container(
              child: MaterialButton(
                minWidth: double.infinity,
                height: 50,
                color: HexColor('#00A8FF'),
                textColor: Colors.white,
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
              ),
            ),
            Container(
              child: MaterialButton(
                minWidth: double.infinity,
                height: 50,
                color: HexColor('#00A8FF'),
                textColor: Colors.white,
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
