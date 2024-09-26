import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff34A751),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: const Center(
                child: Text(
                  'H',
                  style: TextStyle(
                      fontFamily: 'Caveat',
                      fontSize: 64,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff34A751)),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Sign in your account',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Email',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  width: 288,
                  height: 42,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 3), // Shadow position
                        ),
                      ],
                    ),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      autofocus: true,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        hintText: 'ex: jon.smith@email.com',
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 16),
                        // border: OutlineInputBorder(
                        // borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 2.0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color:
                                Color(0xff34A751), // Border color when focused
                            width: 2.0, // Border width
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        filled: true,
                        fillColor: Colors.grey[100],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Password',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  width: 288,
                  height: 42,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 3), // Shadow position
                        ),
                      ],
                    ),
                    child: TextField(
                      obscureText: true,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 2.0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color:
                                Color(0xff34A751), // Border color when focused
                            width: 2.0, // Border width
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        filled: true,
                        fillColor: Colors.grey[100],
                      ),

                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      // decoration: InputDecoration(
                      //     border: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 150,
              child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xff00B140),
                      foregroundColor: const Color(0xffffffff),
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 24),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: const Text('SIGN IN')),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'or sign in with',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 86,
                  height: 42,
                  decoration: BoxDecoration(
                      color: const Color(0xffF4F4F4),
                      borderRadius: BorderRadius.circular(5)),
                  child: IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/icons8-google.svg',
                      width: 30, // Adjust as needed
                      height: 30, // Adjust as needed
                      placeholderBuilder: (BuildContext context) => Container(
                        padding: const EdgeInsets.all(30.0),
                        child: const CircularProgressIndicator(),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/icons8-facebook.svg',
                    width: 30, // Adjust as needed
                    height: 30, // Adjust as needed
                    placeholderBuilder: (BuildContext context) => Container(
                      padding: const EdgeInsets.all(30.0),
                      child: const CircularProgressIndicator(),
                    ),
                  ),
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/icons8-twitter.svg',
                    width: 30, // Adjust as needed
                    height: 30, // Adjust as needed
                    placeholderBuilder: (BuildContext context) => Container(
                      padding: const EdgeInsets.all(30.0),
                      child: const CircularProgressIndicator(),
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 86,
                  height: 42,
                  decoration: BoxDecoration(
                      color: const Color(0xffF4F4F4),
                      borderRadius: BorderRadius.circular(5)),
                  child: IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/icons8-google.svg',
                      width: 30, // Adjust as needed
                      height: 30, // Adjust as needed
                      placeholderBuilder: (BuildContext context) => Container(
                        padding: const EdgeInsets.all(30.0),
                        child: const CircularProgressIndicator(),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 86,
                  height: 42,
                  decoration: BoxDecoration(
                      color: const Color(0xffF4F4F4),
                      borderRadius: BorderRadius.circular(5)),
                  child: IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/icons8-facebook.svg',
                      width: 30, // Adjust as needed
                      height: 30, // Adjust as needed
                      placeholderBuilder: (BuildContext context) => Container(
                        padding: const EdgeInsets.all(30.0),
                        child: const CircularProgressIndicator(),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 86,
                  height: 42,
                  decoration: BoxDecoration(
                      color: const Color(0xffF4F4F4),
                      borderRadius: BorderRadius.circular(5)),
                  child: IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/icons8-twitter.svg',
                      width: 30, // Adjust as needed
                      height: 30, // Adjust as needed
                      placeholderBuilder: (BuildContext context) => Container(
                        padding: const EdgeInsets.all(30.0),
                        child: const CircularProgressIndicator(),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an account?'),
                // const SizedBox(
                //   width: 5,
                // ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: const Color(0xff00B140),
                  ),
                  child: const Text(
                    'SIGN UP',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
