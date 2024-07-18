import 'package:api_calling/home_page.dart';
import 'package:api_calling/login_screen/signup_screen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
         
        
        body:Register(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
