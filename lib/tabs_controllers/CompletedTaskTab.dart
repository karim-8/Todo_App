
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/providers/todo_provider.dart';
import 'package:todo_provider/widgets/task_list.dart';


class CompletedTaskTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<TodoProvider>(
        //todo is object for fetching data from getter
        builder: (context, todo , child) => TodoList(
          tasks:todo.completedTask,
        ),

      ),
    );
  }
}
