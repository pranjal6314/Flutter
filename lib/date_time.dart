import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CurrDateTime extends StatefulWidget {
  const CurrDateTime({super.key});

  @override
  State<CurrDateTime> createState() => _DateTimeState();
}

class _DateTimeState extends State<CurrDateTime> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
            "current time is ${DateFormat('yMMMMEEEEd').format(time)}"), //hms , jms
        ElevatedButton(
            onPressed: () {
              setState(() {});
            },
            child: Text("Current Time"))
      ],
    );
  }
}
