// ignore: file_names
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePickerDialog extends StatefulWidget {
  const DateTimePickerDialog({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DateTimePickerDialogState createState() => _DateTimePickerDialogState();
}

class _DateTimePickerDialogState extends State<DateTimePickerDialog> {
  DateTime _selectedDateTime = DateTime(2023, 5, 2);
  TimeOfDay _selectedTime = const TimeOfDay(hour: 10, minute: 10);

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

    // ignore: use_build_context_synchronously
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
        padding: const EdgeInsets.all(50.0), // Adjust the padding as needed
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              10.0), // Set your desired border radius here
        ),
        backgroundColor:
            const Color.fromARGB(255, 241, 61, 61), // Set your desired color here
      ),
      child: Text(
        // ignore: unnecessary_null_comparison
        _selectedDateTime != null
            ? DateFormat('yyyy-MM-dd hh:mm a').format(_selectedDateTime)
            : 'Select a date and time',
        style: const TextStyle(fontSize: 15),
      ),
      onPressed: () {
        _selectDateTime(context);
        // ignore: unused_local_variable
        var thetime = _selectedDateTime;
      },
    );
  }
}
