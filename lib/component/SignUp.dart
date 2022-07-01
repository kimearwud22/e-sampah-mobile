// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, file_names, avoid_unnecessary_containers, deprecated_member_use, must_be_immutable, prefer_typing_uninitialized_variables, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/Login.dart';

void main() => runApp(SignUpPage());

class SignUpPage extends StatelessWidget {
  var context;

  get child => null;

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
                _iconSignUp(),
                _textSignUp(),
                _formSignUp(),
                _buttonLogin(),
              ],
            ),
          )
        ],
      ),
    ));
  }

  Widget _iconSignUp() {
    return Image.asset(
      'assets/images/iconaa.png',
      width: 100,
      height: 100,
    );
  }

  Widget _textSignUp() {
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

  Widget _formSignUp() {
    return Container(
      child: Column(children: <Widget>[
        Container(
          child: TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              labelText: "Nama",
              hintText: "Masukkan Nama",
            ),
            onSubmitted: (value) async {
              await showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Isian Data"),
                      content: Text("Nama : $value"),
                      actions: <Widget>[
                        FlatButton(
                          child: Text("OK"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    );
                  });
            },
          ),
        ),
        Container(
          child: TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              labelText: "Email",
              hintText: "Masukkan Email",
            ),
            onSubmitted: (value) async {
              await showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Isian Data"),
                      content: Text("Email : $value"),
                      actions: <Widget>[
                        FlatButton(
                          child: Text("OK"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    );
                  });
            },
          ),
        ),
        Container(
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: "Password",
              hintText: "Masukkan Password",
            ),
            onSubmitted: (value) async {
              await showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Isian Data"),
                      content: Text("Password : $value"),
                      actions: <Widget>[
                        FlatButton(
                          child: Text("OK"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    );
                  });
            },
          ),
        ),
        Container(
          child: CheckboxListTile(
            title: Text("Bersedia"),
            subtitle: Text("Terima syarat dan ketentuan yang berlaku"),
            secondary: Icon(Icons.check),
            activeColor: Colors.red,
            value: false,
            onChanged: (value) {
              print(value);
            },
          ),
          ),
        Container(
          child: RaisedButton(
            child: Text("Login"),
            color: Colors.red,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ),
      ]),
      margin: const EdgeInsets.only(top: 20),
    );
  }

  Widget _buttonLogin() {
    return Column(
      children: <Widget>[
        Padding(padding: const EdgeInsets.only(top: 20)),
        InkWell(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.primaries[2],
            ),
            child: Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
        ),
      ],
    );
  }
}

class HexColor {
  HexColor(String s);
}
