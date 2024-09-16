import 'package:flutter/material.dart';

class Sample1 extends StatelessWidget {
  const Sample1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Center(
          // ignore: prefer_const_constructors
          child: Text(
            'Sample1',
            style: const TextStyle(color: Color(0xffffffff), fontSize: 16),
          ),
        ),
        backgroundColor: const Color(0xff9c36b5),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              SizedBox(
                  width: 300,
                  child: TextFormField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      fillColor: const Color(0xff456789),
                      filled: true,
                      hintText: 'Enter your name',
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: const Icon(Icons.face),
                      helperText: 'Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                    ),
                  )),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text("Save")),
              const SizedBox(
                height: 40,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Login',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
