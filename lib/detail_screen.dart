import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final title;
  final description;
  const DetailScreen({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Screen')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20,
        children: [
          TextFormField(
            controller: titleController,
            decoration: InputDecoration(hintText: widget.title),
          ),
          TextFormField(
            controller: descriptionController,
            decoration: InputDecoration(hintText: widget.description),
          ),

          SizedBox(height: 40),
          MaterialButton(onPressed: () {}, child: Text('update')),
        ],
      ),
    );
  }
}
