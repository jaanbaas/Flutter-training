import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffD0EC7C),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Image.asset('assets/images/logo.png'),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 0.45 * screenWidth,
                      height: 0.35 * screenHeight,
                      decoration: _containerDecor(),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Monstera.png',
                            height: 0.3 * screenHeight,
                          ),
                          Text(
                            'Monstera',
                            style: _plantNameDecor(),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 0.45 * screenWidth,
                      height: 0.35 * screenHeight,
                      decoration: _containerDecor(),
                      // color: const Color(0xffffffff),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Pothos.png',
                            height: 0.3 * screenHeight,
                          ),
                          Text(
                            'Pothos',
                            style: _plantNameDecor(),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 0.45 * screenWidth,
                      height: 0.35 * screenHeight,
                      decoration: _containerDecor(),
                      // color: const Color(0xffffffff),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Parlor_palm.png',
                            height: 0.3 * screenHeight,
                          ),
                          Text(
                            'Parlor Palm',
                            style: _plantNameDecor(),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 0.45 * screenWidth,
                      height: 0.35 * screenHeight,
                      decoration: _containerDecor(),
                      // color: const Color(0xffffffff),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Aloe.png',
                            height: 0.3 * screenHeight,
                          ),
                          Text(
                            'Aloe',
                            style: _plantNameDecor(),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 50,
        child: Center(
          child: BottomAppBar(
            color: const Color(0xff92D722),
            shape: const CircularNotchedRectangle(),
            notchMargin: 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.home),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.explore),
                  color: Colors.white,
                ),
                // color: const Color(0xffffffff),

                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person),
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextStyle _plantNameDecor() {
    return const TextStyle(
        fontFamily: 'Poppins', fontSize: 24, fontWeight: FontWeight.bold);
  }

  BoxDecoration _containerDecor() {
    return BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3)),
      ],
      borderRadius: BorderRadius.circular(15),
      border: Border.all(
        color: const Color(0xff189649),
        width: 1,
      ),
      color: const Color(0xffffffff),
    );
  }
}
