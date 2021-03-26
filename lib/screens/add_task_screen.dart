import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks_tile.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  AddTaskScreen(this.addTaskCallback);

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
                addTaskCallback(title);
              },
              child: Text('Add'),
            )
          ],
        ),
      ),
    );
  }
}
