import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/providers/todo_provider.dart';
import 'package:todo_provider/screens/HomeScreen.dart';

import 'models/todo_model.dart';

void main() => runApp(TodoApp());


class TodoApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    return ChangeNotifierProvider(

      builder: (context) => TodoProvider(),

      child: MaterialApp(
        title: 'Todos',
        theme: ThemeData.dark(),
        home: HomeScreen(),
      ),
    );
  }


}