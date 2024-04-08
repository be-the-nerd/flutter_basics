import 'package:flutter/material.dart';

class DemoBottomSheet extends StatelessWidget {
  const DemoBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {
            _displayBottomSheet(context);
          },
          height: 50,
          minWidth: 200,
          color: Colors.grey,
          textColor: Colors.white,
          child: const Text('Open'),
        ),
      ),
    );
  }

  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        backgroundColor: Colors.amber,
        barrierColor: Colors.black87.withOpacity(0.8),
        // isDismissible: false,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        builder: (context) => Container(
              height: 200,
              child: const Center(
                child: Text(
                  'John Doe',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ));
  }
}
