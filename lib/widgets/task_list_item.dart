import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/models/todo_model.dart';
import 'package:todo_provider/providers/todo_provider.dart';

/// Item Design
class TaskListItem extends StatelessWidget {
  //model object
  final TodoModel task;

  TaskListItem({@required this.task});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      ///checkbox
      leading: Checkbox(
        value: task.completedTask,
        onChanged: (bool checked) {

          Provider.of<TodoProvider>(context, listen: false).
          toggleNote(task);
        },
      ),

      ///title
      title: Text(task.title),

      ///icon Button
      trailing: IconButton(
        icon: Icon(
          Icons.delete,
          color: Colors.red,
        ),
        onPressed: () {
          //calling viewmodel to change data in model
          Provider.of<TodoProvider>(context, listen: false)
              .deleteNote(task);
        },
      ),
    );
  }
}
