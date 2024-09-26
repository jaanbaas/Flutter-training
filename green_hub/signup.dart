import 'package:flutter/material.dart';
import 'package:green_hub/login_page.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _mobileFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _nameFocusNode = FocusNode();

  bool _showEmailIcon = true;
  bool _showMobileIcon = true;
  bool _showPasswordIcon = true;
  bool _showNameIcon = true;

  @override
  void initState() {
    super.initState();

    // Listen for focus changes to hide/show the the icon
    _nameFocusNode.addListener(() {
      setState(() {
        _showNameIcon =
            !_nameFocusNode.hasFocus; //Hide the icon when the field is focused
      });
    });

    _mobileFocusNode.addListener(() {
      setState(() {
        _showMobileIcon = !_mobileFocusNode
            .hasFocus; //Hide the icon when the field is focused
      });
    });

    _passwordFocusNode.addListener(() {
      setState(() {
        _showPasswordIcon = !_passwordFocusNode
            .hasFocus; //Hide the icon when the field is focused
      });
    });

    _emailFocusNode.addListener(() {
      setState(() {
        _showEmailIcon =
            !_emailFocusNode.hasFocus; //Hide the icon when the field is focused
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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/logo.png'),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Signup',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.all(40),
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
                              'Name',
                              style: _text1(),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            _nameField(),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Mobile Number',
                              style: _text1(),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            _mobileField(),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Email',
                              style: _text1(),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            _emailField(),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Password',
                              style: _text1(),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            _passwordField(),
                            const SizedBox(
                              height: 30,
                            ),
                            _signUpButton(),
                            // const SizedBox(
                            //   height: 5,
                            // ),
                            Center(child: signInButton()),
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
      ),
    );
  }

  Widget _nameField() {
    return Container(
      width: double.infinity,
      // height: 50,
      decoration: _fieldDecoration(),
      child: TextFormField(
        focusNode: _nameFocusNode,
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
            prefixIcon: _showNameIcon
                ? const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.person,
                      color: Color(0xff189649),
                    ),
                  )
                : null,
            hintText: 'Enter your name',
            hintStyle: const TextStyle(
              color: Color.fromRGBO(0, 0, 0, 0.370),
              fontFamily: 'Poppins',
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
            border: InputBorder.none),
      ),
    );
  }

  Widget _mobileField() {
    return Container(
      width: double.infinity,
      // height: 50,
      decoration: _fieldDecoration(),
      child: TextFormField(
        keyboardType: TextInputType.number,
        focusNode: _mobileFocusNode,
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
            prefixIcon: _showMobileIcon
                ? const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.phone,
                      color: Color(0xff189649),
                    ),
                  )
                : null,
            hintText: 'Enter your mobile number',
            hintStyle: const TextStyle(
              color: Color.fromRGBO(0, 0, 0, 0.370),
              fontFamily: 'Poppins',
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
            border: InputBorder.none),
      ),
    );
  }

  Widget _emailField() {
    return Container(
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
    );
  }

  Widget _passwordField() {
    return Container(
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
    );
  }

  Widget _signUpButton() {
    return Center(
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff92D722),
              foregroundColor: const Color(0xffffffff),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: const Text(
            'Sign Up',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 22,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }

  Widget signInButton() {
    return TextButton(
      onPressed: () {},
      child: const Text(
        'Back to login',
        style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 11,
            fontWeight: FontWeight.w400,
            color: Color(0xff000000)),
      ),
    );
  }

  TextStyle _text1() {
    return const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: Color(0xff000000),
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
}
