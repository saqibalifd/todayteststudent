import 'package:flutter/material.dart';
import 'package:todayteststudent/add_todo_screen.dart';
import 'package:todayteststudent/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List data = [
    {
      'title': 'this is title of your data',
      'description': 'this is description of your second data',
    },
    {'title': 'my first tod', 'description': 'this is first todo description'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),

      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    title: data[index]['title'],
                    description: data[index]['description'],
                  ),
                ),
              ),
              title: Text(data[index]['title']),
              subtitle: Text(data[index]['description']),
              trailing: InkWell(
                onTap: () {},
                child: Icon(Icons.delete, color: Colors.red),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTodoScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
