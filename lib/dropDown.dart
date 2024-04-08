import 'package:flutter/material.dart';

class DemoDropDown extends StatefulWidget {
  const DemoDropDown({super.key});

  @override
  State<DemoDropDown> createState() => _DemoDropDownState();
}

class _DemoDropDownState extends State<DemoDropDown> {
  String _dropdownValue = '1';
  var _items = ['1', '2', '3', '4', '5'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: 150,
        height: 80,
        decoration: BoxDecoration(
            color: Color(0xffEBEDFE), borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: DropdownButton(
            items: _items.map((String item) {
              return DropdownMenuItem(
                value: item,
                child: Text(item),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _dropdownValue = newValue!;
              });
            },
            value: _dropdownValue,
            borderRadius: BorderRadius.circular(10),
            icon: const Icon(Icons.keyboard_arrow_down),
            iconSize: 50,
            style: TextStyle(fontSize: 20, color: Colors.black),
            underline: Container(),
          ),
        ),
      ),
    ));
  }
}
