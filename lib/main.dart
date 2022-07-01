// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable, use_key_in_widget_constructors, prefer_final_fields, unused_field, deprecated_member_use, unnecessary_const, avoid_unnecessary_containers, prefer_const_constructors, override_on_non_overriding_member, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/Login.dart';
import 'package:flutter_application_1/component/SignUp.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Color _primaryColor = Colors.lightBlueAccent;
  Color _accentColor = Colors.indigo;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Sampah',
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Color.fromARGB(255, 42, 195, 15),
        primarySwatch: Colors.lightGreen,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Sampah'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 34, 157, 97),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Icon(
              Icons.local_drink,
              size: 100,
              color: Color.fromARGB(255, 34, 67, 157),
            ),
            Container(
              child: Text(
                'Selamat datang di aplikasi E-Sampah',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 34, 67, 157),
                ),
              ),
              margin: const EdgeInsets.only(top: 30),
            ),
            Container(
              child: Text(
                'Gunakan Aplikasi Ini Dengan BAik',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 34, 67, 157),
                ),
              ),
              margin: const EdgeInsets.only(top: 30),
            ),
            Container(
              child: MaterialButton(
                minWidth: double.infinity,
                height: 50,
                color: Color.fromARGB(255, 34, 67, 157),
                textColor: Colors.white,
                child: Text(
                  'Mulai',
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
