import 'package:flutter/material.dart';

class AddTodoScreen extends StatefulWidget {
  const AddTodoScreen({super.key});

  @override
  State<AddTodoScreen> createState() => _AddTodoScreenState();
}

class _AddTodoScreenState extends State<AddTodoScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add todo Screen')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20,
        children: [
          TextFormField(
            controller: titleController,
            decoration: InputDecoration(hintText: 'title'),
          ),
          TextFormField(
            controller: descriptionController,
            decoration: InputDecoration(hintText: 'description'),
          ),

          SizedBox(height: 40),
          MaterialButton(onPressed: () {}, child: Text('Add')),
        ],
      ),
    );
  }
}
