import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/list_names.dart';
import 'package:providers/names.dart';
import 'package:providers/services.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<CounterProvider>(
        create: (context) => CounterProvider(),
      ),
      ChangeNotifierProvider<Names>(
        create: (context) => Names(),
      )
    ],
    child: const MaterialApp(
      home: MyWidget(),
    ),
  ));
}
