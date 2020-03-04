import 'package:flutter/material.dart';

class TodoModel {

  bool completedTask;
  String title;

  TodoModel({@required this.title,this.completedTask = false});

  void toggleTapped () {
    
    completedTask = !completedTask;
  }
  
  
}