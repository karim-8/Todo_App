import 'package:flutter/material.dart';
import 'package:todo_provider/models/todo_model.dart';
import 'dart:collection';


/*
* Logic
* */
class TodoProvider extends ChangeNotifier {

final List<TodoModel> _noteList = [];
  
//creating 3 getters based over tab controllers 
  UnmodifiableListView<TodoModel> get allTasks =>
      UnmodifiableListView( _noteList);

  UnmodifiableListView<TodoModel> get completedTask =>
      UnmodifiableListView(_noteList.where((item)=> !item.completedTask));

  UnmodifiableListView<TodoModel> get inCompletedTask =>
      UnmodifiableListView( _noteList.where((item)=> item.completedTask));

//add - delete - toggle

  void addNote (TodoModel model) {
    _noteList.add(model);
    notifyListeners();
}

  void deleteNote (TodoModel model) {
      _noteList.remove(model);
    notifyListeners();
  }
  
  void toggleNote(TodoModel model) {
    //fetch index and toggle state
      _noteList[_noteList.indexOf(model)].toggleTapped();
      notifyListeners();

  }

}