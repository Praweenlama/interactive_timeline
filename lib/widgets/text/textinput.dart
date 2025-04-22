import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import the intl package

class InputText extends StatefulWidget {
  const InputText({super.key});

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  DateTime? selectedDate;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  String? displayData;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 20), // Add spacing at the top
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Title',
                hintText: 'Enter the title...',
              ),
            ),
            SizedBox(height: 16), // Add spacing between fields
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Description',
                hintText: 'Enter the description...',
              ),
              maxLines: 5, // Allow multiline input for description
            ),
            SizedBox(height: 16), // Add spacing between fields
            Row(
              children: [
                Text(
                  selectedDate == null
                      ? 'No date selected'
                      : 'Selected Date: ${DateFormat('yyyy-MM-dd').format(selectedDate!)}',
                ),
                SizedBox(width: 16),
                TextButton(
                  onPressed: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                    if (pickedDate != null && pickedDate != selectedDate) {
                      setState(() {
                        selectedDate = pickedDate;
                      });
                    }
                  },
                  child: Text('Select Date'),
                ),
              ],
            ),
            SizedBox(height: 16), // Add spacing before the button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  displayData =
                      'Title: ${titleController.text}\nDescription: ${descriptionController.text}\nDate: ${selectedDate != null ? DateFormat('yyyy-MM-dd').format(selectedDate!) : 'No date selected'}';
                });
              },
              child: Text('Show Data'),
            ),
            SizedBox(height: 16), // Add spacing before displaying data
            if (displayData != null)
              Text(
                displayData!,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}
