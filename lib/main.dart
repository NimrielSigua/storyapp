import 'package:flutter/material.dart';
import 'dart:async';

import 'package:storyapp/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RecipeShare',
      home: const Main(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Main extends StatefulWidget {
  const Main({ Key? key }) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  void initState() {
    super.initState();
    // Navigate to Homepage after 2 seconds
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => homepage())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.yellow, Colors.orange],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "NS STORY APP",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.white,
                  fontFamily: 'Comic Sans MS',
                ),
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/book_icon.png',
                height: 100,
              ),
              SizedBox(height: 20),
              Text(
                "Where Adventures Begin!",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontFamily: 'Comic Sans MS',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.yellow, Colors.orange],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "NS STORY APP",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.white,
                  fontFamily: 'Comic Sans MS',
                ),
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/book_icon.png',
                height: 100,
              ),
              SizedBox(height: 20),
              Text(
                "Where Adventures Begin!",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontFamily: 'Comic Sans MS',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

 
