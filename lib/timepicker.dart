import 'package:flutter/material.dart';

class DemoTimePicker extends StatefulWidget {
  const DemoTimePicker({super.key});

  @override
  State<DemoTimePicker> createState() => _DemoTimePickerState();
}

class _DemoTimePickerState extends State<DemoTimePicker> {
  TimeOfDay _timeOfDay = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              _timeOfDay.hour.toString().padLeft(2, '0') +
                  ":" +
                  _timeOfDay.minute.toString().padLeft(2, '0'),
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
                height: 50,
                minWidth: 150,
                color: const Color(0xff1D1E22),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text('Open Time Picker',
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  _selectTime();
                }),
          ],
        ),
      ),
    );
  }

  Future<void> _selectTime() async {
    TimeOfDay? _picked =
        await showTimePicker(initialTime: _timeOfDay, context: context);

    if (_picked != null) {
      setState(() {
        _timeOfDay = _picked;
      });
    } else {
      //When CANCEL is pressed. it will return NULL
      setState(() {
        _timeOfDay = TimeOfDay.now();
      });
    }
  }
}
