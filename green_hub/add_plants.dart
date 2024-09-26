import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AddPlants extends StatefulWidget {
  const AddPlants({super.key});

  @override
  State<AddPlants> createState() => _AddPlantsState();
}

class _AddPlantsState extends State<AddPlants> {
  File? _image; // To store the picked image
  final ImagePicker _picker = ImagePicker();

  // Function to pick an image from gallery
  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path); // Convert XFile to File
      });
    }
  }

  // Function to pick an image from camera
  Future<void> _pickImageFromCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path); // Convert XFile to File
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              'assets/images/logo.png',
              height: 100,
              width: 100,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Name',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff000000),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: _fieldDecoration(),
            child: TextFormField(
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
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          const Text(
            'About',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff000000),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: _fieldDecoration(),
            child: TextFormField(
              maxLines: 5,
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
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Image',
            style: text1(),
          ),
          Container(
            width: double.infinity,
            decoration: _fieldDecoration(),
            child: Row(
              children: [
                _image != null
                    ? Image.file(
                        _image!, // Display the selected image
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      )
                    : Text(
                        'No image selected',
                        style: text1(),
                      ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 75,
                  // height: 15,
                  child: ElevatedButton(
                    onPressed: _pickImage,
                    style: _imageButton(), // Pick image from gallery
                    child: const Icon(
                      Icons.file_upload,
                      color: Color(0xff189649),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: _pickImageFromCamera,
                  style: _imageButton(), // Pick image from camera
                  child: const Icon(Icons.photo, color: Color(0xff189649)),
                ),
              ],
            ),
          ),
        ],
      ),
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

  TextStyle text1() {
    return const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Color(0xff000000),
    );
  }

  ButtonStyle _imageButton() {
    return ElevatedButton.styleFrom(
      backgroundColor: Colors.transparent, // Removes the background color
      elevation: 0, // Removes the elevation (shadow)
      shadowColor: Colors.transparent, // Removes shadow color if necessary
    );
  }
}
