import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/tasks_tile.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String title;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
              textAlign: TextAlign.center,
            ),
            TextField(
              decoration: InputDecoration(border: InputBorder.none, hintText: 'Enter a todo task'),
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                title = value;
              },
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {
                Provider.of<TaskData>(context).addTask(title);
                Navigator.pop(context);
              },
              child: Text('Add'),
            )
          ],
        ),
      ),
    );
  }
}
