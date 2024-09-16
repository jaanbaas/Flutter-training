import 'package:flutter/material.dart';
import 'package:flutter_application_1/chess_board.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/login_page1.dart';
import 'package:flutter_application_1/sample1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sample',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Login(),
    );
  }
}
