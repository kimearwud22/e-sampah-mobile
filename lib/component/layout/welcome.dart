// ignore_for_file: prefer_const_constructors, unused_import, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/layout/sigup.dart';
import 'package:flutter_application_1/component/layout/login.dart';
import '../../style.dart';

class WelcomeLayout extends StatelessWidget {
  const WelcomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Welcome To E-Sampah",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: kSecondaryColor,
          ),
        ),
        Row(children: [
          Spacer(),
          Expanded(
            flex: 8,
            child: Container(
              width: double.infinity,
              height: 100,
              child: Image.asset(
                "assets/images/iconaa.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ]),
        SizedBox(height: 20),
        Text(
          "Selamat datang di aplikasi E-Sampah",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kSecondaryColor,
          ),
        ),
        SizedBox(height: 20),
        Row(children: [
          Hero(
              tag: "signup",
              child: elevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpLayout(),
                    ),
                  );
                },
              )),
          SizedBox(height: 20),
          Text(
            "Belum punya akun? Daftar disini",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: kSecondaryColor,
            ),
          ),
          Row(children: [
            Hero(
                tag: "login",
                child: elevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginLayout(),
                      ),
                    );
                  },
                )),
          ])
        ]),
      ],
    );
  }

  elevatedButton({required Null Function() onPressed}) {}
}

class SizeBox {}

class SvgPicture {
  static asset(String s, {required int height}) {}
}
