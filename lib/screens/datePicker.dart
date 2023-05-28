import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePickerDialog extends StatefulWidget {
  @override
  _DateTimePickerDialogState createState() => _DateTimePickerDialogState();
}

class _DateTimePickerDialogState extends State<DateTimePickerDialog> {
  DateTime _selectedDateTime = DateTime(2023, 5, 2);
  TimeOfDay _selectedTime = TimeOfDay(hour: 10, minute: 10);

  Future<void> _selectDateTime(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2023),
      lastDate: DateTime(2025),
    );

    if (pickedDate != null && pickedDate != _selectedDateTime) {
      setState(() {
        _selectedDateTime = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          _selectedTime.hour,
          _selectedTime.minute,
        );
      });
    }

    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );

    if (pickedTime != null && pickedTime != _selectedTime) {
      setState(() {
        _selectedTime = pickedTime;
        _selectedDateTime = DateTime(
          _selectedDateTime.year,
          _selectedDateTime.month,
          _selectedDateTime.day,
          pickedTime.hour,
          pickedTime.minute,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(50.0), // Adjust the padding as needed
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              10.0), // Set your desired border radius here
        ),
        backgroundColor:
            Color.fromARGB(255, 241, 61, 61), // Set your desired color here
      ),
      child: Text(
        // ignore: unnecessary_null_comparison
        _selectedDateTime != null
            ? DateFormat('yyyy-MM-dd hh:mm a').format(_selectedDateTime)
            : 'Select a date and time',
        style: TextStyle(fontSize: 15),
      ),
      onPressed: () {
        _selectDateTime(context);
        var thetime = _selectedDateTime;
      },
    );
  }
}
