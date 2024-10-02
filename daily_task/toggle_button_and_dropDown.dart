import 'package:flutter/material.dart';

class ToggleButton1 extends StatefulWidget {
  const ToggleButton1({super.key});

  @override
  State<ToggleButton1> createState() => _ToggleButton1State();
}

class _ToggleButton1State extends State<ToggleButton1> {
  List<bool> isSelected = [false, false, false];
  final _productSizeList = ['Small', 'Medium', 'Large', 'ExtraLarge'];
  String? selectedString;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          ToggleButtons(
            isSelected: isSelected,
            onPressed: (int index) {
              setState(() {
                for (int i = 0; i < isSelected.length; i++) {
                  if (i == index) {
                    isSelected[index] = !isSelected[index];
                  } else {
                    isSelected[i] = false;
                  }
                }
              });
            },
            children: const [
              Text('Option1'),
              Text('Option1'),
              Text('Option1'),
            ],
          ),
          DropdownButton<String>(
            hint: const Text('Select an option'),
            value: selectedString,
            items: _productSizeList.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                selectedString = newValue;
              });
            },
          ),
        ]),
      ),
    );
  }
}
