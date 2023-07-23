// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:twitter_clone/next_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
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
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text('Welcome to Twitter. What\'d you like to do?',
                  style: TextStyle(
                      color: Colors.white, fontSize: 30, fontFamily: 'Roboto')),
            ),
            SizedBox(
              height: 40,
            ),
            TextButton(
              onPressed: () {},
              child: Text('Sign In'),
              style: TextButton.styleFrom(
                textStyle: TextStyle(fontSize: 15),
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                fixedSize: Size.fromWidth(280),
                backgroundColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => SingUpScreen())));
              },
              child: Text('Sign Up'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 15),
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(15),
                ),
                fixedSize: Size.fromWidth(280),
                backgroundColor: Color(0xff1DA1F2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
