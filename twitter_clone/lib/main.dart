// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitter',
      theme: ThemeData(
        primaryColor: Color(0xff1DA1F2),
        fontFamily: 'Sora',
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1DA1F2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://www.iconsdb.com/icons/preview/white/twitter-xxl.png',
              height: 66,
              width: 80,
            ),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text('Welcome to Twitter. What\'d you like to do?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: Text('Sign in!'),
              style: TextButton.styleFrom(
                textStyle: TextStyle(fontSize: 15, fontFamily: "Sora"),
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                fixedSize: Size.fromWidth(260),
                backgroundColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: Text('Sign out!'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 15),
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                fixedSize: Size.fromWidth(260),
                backgroundColor: Color(0xff1DA1F2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
