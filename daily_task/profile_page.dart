import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> str = ['Skills', 'Certificates', 'Personal Details'];
    // Set the status bar color to transparent to avoid it inheriting the AppBar's color
    // SystemChrome.setSystemUIOverlayStyle(
    //   const SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent, // Make status bar transparent
    //     statusBarIconBrightness:
    //         Brightness.light, // Adjust icon color for light backgrounds
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Color.fromARGB(82, 255, 255, 255),
            statusBarIconBrightness: Brightness.light),
        title: const Text('Profile Page'),
        backgroundColor: Colors.black87,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/uifaces-popular-image.jpg'),
          ),
          // ClipOval(
          //   child: Image.asset(
          //     'assets/uifaces-popular-image.jpg',
          //     width: 100,
          //     height: 100,
          //   ),
          // ),
          const Text(
            'Janbas',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          const Text(
            'Working in Softroniics as an intern since 2024 June',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.w400),
          ),

          Expanded(
            child: ListView.builder(
                itemCount: str.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(str[index]),
                    subtitle: ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('${str[index]} pressed'),
                            ),
                          );
                        },
                        child: const Icon(Icons.arrow_downward)),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                          '${str[index]} Pressed',
                          style: const TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.black87,
                      ));
                    },
                  );
                }),
          ),
          Spacer(),
          ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: 'Profile Updated',
                    gravity: ToastGravity.BOTTOM_RIGHT,
                    backgroundColor: Colors.green);
              },
              child: const Text('Update Profile')),
        ],
      ),
    );
  }
}
