
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/models/todo_model.dart';
import 'package:todo_provider/providers/todo_provider.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final taskTitleController = TextEditingController();
  bool completedStatus = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Task'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextField(controller: taskTitleController),
                  CheckboxListTile(
                    value: completedStatus,
                    onChanged: (checked) => setState(() {
                      completedStatus = checked;
                    }),
                    title: Text('Complete?'),
                  ),
                  RaisedButton(
                    child: Text('Add'),
                    onPressed: onAdd,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  //add new note
  void onAdd() {
    //save values in objects
    final String textValue = taskTitleController.text;
    final bool completed = completedStatus;
    
    //save model with data
    if(textValue.isNotEmpty) {
      final TodoModel todoModel = TodoModel(
          title: textValue ,
          completedTask: completed);
      
      Provider.of<TodoProvider>(context,listen: false).addNote(todoModel);
      Navigator.pop(context);
    }

  }



  @override
  void dispose() {
    taskTitleController.dispose();
    super.dispose();
  }
 
  }

  



