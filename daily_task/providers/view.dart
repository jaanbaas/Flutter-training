import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/services.dart';

class ViewCounter extends StatelessWidget {
  const ViewCounter({super.key});

  @override
  Widget build(BuildContext context) {
    final object = Provider.of<CounterProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '${object.count}',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      object.increment();
                    },
                    child: Text('increment')),
                ElevatedButton(
                    onPressed: () {
                      object.decrement();
                    },
                    child: Text('decrement')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
