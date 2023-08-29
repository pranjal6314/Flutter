import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CurrDateTime extends StatefulWidget {
  const CurrDateTime({super.key});

  @override
  State<CurrDateTime> createState() => _DateTimeState();
}

class _DateTimeState extends State<CurrDateTime> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
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
            child: Text("Current Time")),
        SizedBox(
          height: 30,
        ),
        Text(
          selectedDate != null
              ? "Selected Date: ${DateFormat('yMMMMEEEEd').format(selectedDate!)}"
              : "Select Date",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 30,
        ),
        ElevatedButton(
            onPressed: () async {
              DateTime? datepicked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1999),
                  lastDate: DateTime(2024));
              if (datepicked != null) {
                setState(() {
                  selectedDate = datepicked; // Update the selected date
                });
                print(datepicked);
                print(
                    'Date -> ${datepicked.day}/${datepicked.month}/${datepicked.year}');
                print(
                    "New Date -> ${DateFormat('yMMMMEEEEd').format(datepicked)}");
              }
            },
            child: Text("Date")),
        SizedBox(
          height: 30,
        ),
        Text(
          selectedTime != null
              ? "Selected Time: ${selectedTime!.hour}:${selectedTime!.minute}"
              : "Select Time",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 30,
        ),
        ElevatedButton(
            onPressed: () async {
              TimeOfDay? timepicked = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.input);
              if (timepicked != null) {
                setState(() {
                  selectedTime = timepicked;
                });

                print(timepicked);
                if (selectedDate != null) {
                  print(
                      "timeee -> ${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}");
                }
                print("Time -> ${timepicked.hour}:${timepicked.minute}");
              }
            },
            child: Text("Time")),
      ],
    );
  }
}
