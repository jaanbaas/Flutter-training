import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/names.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final _controller1 = TextEditingController();
  // List<String> names = ['janbas', 'inshad', 'ashid', 'amal'];

  @override
  Widget build(BuildContext context) {
    final obj1 = Provider.of<Names>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: const Text('Name'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            controller: _controller1,
            decoration: const InputDecoration(
              fillColor: Color.fromARGB(255, 151, 191, 57),
              border: OutlineInputBorder(),
              hintText: 'Enter the name',
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              if (_controller1.text.isNotEmpty) {
                obj1.addName(_controller1.text);
                _controller1.clear();
              }
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffB2D859)),
            child: const Text('Add'),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: obj1.names.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text((index + 1).toString()),
                    title: Text(obj1.names[index]),
                    trailing: IconButton(
                        onPressed: () {
                          obj1.delName(index);
                        },
                        icon: const Icon(Icons.delete)),
                  );
                }),
          )
        ],
      ),
    );
  }
}
