// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import, file_names, must_be_immutable, avoid_unnecessary_containers, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/SignUp.dart';
import 'package:flutter_application_1/component/Content.dart';
import 'package:hexcolor/hexcolor.dart';

void main() => (runApp(LoginPage()));

class LoginPage extends StatelessWidget {
  late BuildContext context;

  get padding => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.lightGreen,
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                _iconLOgin(),
                _textLogin(),
                _formLogin(),
                _buttonLogin(),
                _buttonSignUp(),
              ],
            ),
          )
        ],
      ),
    ));
  }

  Widget _iconLOgin() {
    return Image.asset(
      'assets/images/iconaa.png',
      width: 100,
      height: 100,
    );
  }

  Widget _textLogin() {
    return Container(
      child: Text(
        'Selamat Datang di Aplikasi E-Sampah',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      margin: const EdgeInsets.only(top: 30),
    );
  }

  Widget _formLogin() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            margin: const EdgeInsets.only(top: 20),
          ),
          Container(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            margin: const EdgeInsets.only(top: 20),
          ),
        ],
      ),
      margin: const EdgeInsets.only(top: 20),
    );
  }

  Widget _buttonLogin() {
    return Column(
      children: <Widget>[
        Padding(padding: const EdgeInsets.only(top: 20)),
        InkWell(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
            child: MaterialButton(
              minWidth: double.infinity,
              height: 50,
              color: Color.fromARGB(255, 34, 67, 157),
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
                  MaterialPageRoute(builder: (context) => MyContent()),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buttonSignUp() {
    return Column(
      children: <Widget>[
        Padding(padding: const EdgeInsets.only(top: 20)),
        InkWell(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
            child: MaterialButton(
              minWidth: double.infinity,
              height: 50,
              color: Colors.primaries[2],
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
        )
      ],
    );
  }
}
