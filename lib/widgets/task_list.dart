import 'package:flutter/material.dart';
import 'package:todo_provider/models/todo_model.dart';
import 'package:todo_provider/widgets/task_list_item.dart';


/*

Receive list of tasks
Return a list of task item
build them with the single item design

* */


class TodoList extends StatelessWidget {
  final List<TodoModel> tasks;

  TodoList({@required this.tasks});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getChildrenTasks(),
    );
  }

  List<Widget> getChildrenTasks() {
    return tasks.map((todo) =>
        TaskListItem(task: todo)).toList();
  }
}
