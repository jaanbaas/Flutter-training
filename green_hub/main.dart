import 'package:flutter/material.dart';
import 'package:green_hub/add_plants.dart';
import 'package:green_hub/cart.dart';
import 'package:green_hub/home_page.dart';
import 'package:green_hub/login_page.dart';
import 'package:green_hub/product_details.dart';
import 'package:green_hub/signup.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Product(),
    //  Scaffold(
    //   body: Container(
    //     decoration: const BoxDecoration(
    //       gradient: LinearGradient(
    //         colors: [
    //           Color(0xffD0EC7C),
    //           Color(0xff687631),
    //         ],
    //         // focal: Alignment.topRight,
    //         begin: Alignment.topLeft,
    //         end: Alignment.bottomRight,
    //       ),
    //     ),
    //     child: const HomePage(),
    //   ),
    // ),
  ));
}
