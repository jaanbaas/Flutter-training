import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfilePictureChange extends StatefulWidget {
  const ProfilePictureChange({super.key});

  @override
  State<ProfilePictureChange> createState() => _ProfilePictureChangeState();
}

class _ProfilePictureChangeState extends State<ProfilePictureChange> {
  File? _image;

  void _showAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Profile Picture'),
            content: const Text('Please select the image'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  _pickImage(ImageSource.gallery);
                },
                child: const Text('Gallery'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  _pickImage(ImageSource.camera);
                },
                child: const Text('Camera'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancel'),
              ),
            ],
          );
        });
  }

  Future<void> _pickImage(ImageSource source) async {
    final pickedImage = await ImagePicker().pickImage(source: source);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

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
        backgroundColor: const Color.fromARGB(221, 38, 165, 174),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: _image == null
                          ? const AssetImage('assets/uifaces-popular-image.jpg')
                          : FileImage(_image!),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: IconButton(
                        onPressed: () {
                          _showAlertDialog(context);
                        },
                        icon: SvgPicture.asset(
                          'assets/icons/images-outline.svg',
                          width: 25,
                          height: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
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
              ],
            ),
          ),
          // ClipOval(
          //   child: Image.asset(
          //     'assets/uifaces-popular-image.jpg',
          //     width: 100,
          //     height: 100,
          //   ),
          // ),

          // ElevatedButton(
          //   onPressed: () {},
          //   child: const Text(
          //     'Change Profile Picture',
          //     style: TextStyle(
          //         fontFamily: 'Poppins',
          //         fontSize: 18,
          //         fontWeight: FontWeight.w400),
          //   ),
          // ),

          Expanded(
            child: ListView.builder(
                itemCount: str.length,
                itemBuilder: (context, index) {
                  return ExpansionTile(
                    title: Text(str[index]),
                    trailing: const Icon(Icons.arrow_downward),
                    children: const [
                      ListTile(
                        title: Text('Organized'),
                      ),
                      ListTile(
                        title: Text('Problem Solving'),
                      ),
                      ListTile(
                        title: Text('Front-end coding'),
                      ),
                    ],
                    // subtitle: Container(
                    //   width: 45,
                    //   height: 45,
                    //   child: ElevatedButton(
                    //       onPressed: () {
                    //         ScaffoldMessenger.of(context).showSnackBar(
                    //           SnackBar(
                    //             content: Text('${str[index]} pressed'),
                    //           ),
                    //         );
                    //       },
                    //       child: const Icon(Icons.arrow_downward)),
                    // ),
                    // onTap: () {
                    //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    //     content: Text(
                    //       '${str[index]} Pressed',
                    //       style: const TextStyle(color: Colors.white),
                    //     ),
                    //     backgroundColor: Colors.black87,
                    //   ));
                    // },
                  );
                }),
          ),
          // Spacer(),
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
