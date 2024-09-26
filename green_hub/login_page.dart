import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  bool _showEmailIcon = true;
  bool _showPasswordIcon = true;

  @override
  void initState() {
    super.initState();

    // Listen for focus changes to hide/show the the icon
    _emailFocusNode.addListener(() {
      setState(() {
        _showEmailIcon =
            !_emailFocusNode.hasFocus; //Hide the icon when the field is focused
      });
    });

    _passwordFocusNode.addListener(() {
      setState(() {
        _showPasswordIcon = !_passwordFocusNode
            .hasFocus; //Hide the icon when the field is focused
      });
    });
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    //Clean up the focus node
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Welcome to green hub',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff000000),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(40),
                child: Form(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xfff5f5f5),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: _text1(),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: double.infinity,
                            // height: 50,
                            decoration: _fieldDecoration(),
                            child: TextFormField(
                              focusNode: _emailFocusNode,
                              // autofocus: true,
                              cursorColor: const Color(0xff189649),
                              cursorWidth: 3.0,
                              cursorHeight: 24,
                              cursorRadius: const Radius.circular(2),
                              style: const TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.370),
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 14,
                                  ),
                                  prefixIcon: _showEmailIcon
                                      ? const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.email,
                                            color: Color(0xff189649),
                                          ),
                                        )
                                      : null,
                                  hintText: 'Enter your Email id',
                                  hintStyle: const TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 0.370),
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  border: InputBorder.none),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text('Password', style: _text1()),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: double.infinity,
                            // height: 50,
                            decoration: _fieldDecoration(),
                            child: TextFormField(
                              focusNode: _passwordFocusNode,
                              obscureText: true,
                              obscuringCharacter: '*',
                              cursorColor: const Color(0xff189649),
                              cursorWidth: 3.0,
                              cursorHeight: 24,
                              cursorRadius: const Radius.circular(2),
                              style: const TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.370),
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 14,
                                  ),
                                  prefixIcon: _showPasswordIcon
                                      ? const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.lock,
                                            color: Color(0xff189649),
                                          ),
                                        )
                                      : null,
                                  hintText: 'Enter your Password',
                                  hintStyle: const TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 0.370),
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  border: InputBorder.none),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff92D722),
                                    foregroundColor: const Color(0xffffffff),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                child: const Text(
                                  'Login',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Create new account?',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000)),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff1400FF)),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildHeader() {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        child: Image.asset(
          'assets/images/pngtree.png',
          // width: double.infinity,
          height: 300,
          fit: BoxFit.cover,
        ),
      ),
      Image.asset('assets/images/logo.png',
          width: 150, height: 150, color: const Color(0xff0d7f3f))
    ],
  );
}

BoxDecoration _fieldDecoration() {
  return BoxDecoration(
      color: const Color(0xffE7F9DA),
      boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3)),
      ],
      borderRadius: BorderRadius.circular(7),
      border: Border.all(
        color: const Color(0xff189649),
        width: 2,
      ));
}

TextStyle _text1() {
  return const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: Color(0xff000000),
  );
}
