import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/daily_task/booking_app2.dart';

class BookingRoom extends StatefulWidget {
  const BookingRoom({super.key});
  @override
  State<BookingRoom> createState() {
    return _BookingRoomState();
  }
}

class _BookingRoomState extends State<BookingRoom> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
        context: context, initialTime: selectedTime ?? TimeOfDay.now());

    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Booking Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectedDate == null
                  ? 'No date chosen!'
                  : 'Selected date: ${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
              style: const TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  color: Color(0xff444444)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              selectedTime == null
                  ? 'No Time chosen!'
                  : 'Selected Time: ${selectedTime!.format(context)}',
              style: const TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  color: Color(0xff444444)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _selectDate(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[200],
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Select date'),
                ),
                ElevatedButton(
                  onPressed: () => _selectTime(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[200],
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Select time'),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),

            Container(
              width: 150,
              height: 45,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ConfirmationPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Confirm',
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
                  )),
            )
            // T
          ],
        ),
      ),
    );
  }

  Future<DateTime?> pickDate() {
    return showDatePicker(
      context: context,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
  }
}
