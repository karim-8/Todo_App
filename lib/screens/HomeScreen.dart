import 'package:flutter/material.dart';
import 'package:todo_provider/tabs_controllers/AllTaskTab.dart';
import 'package:todo_provider/tabs_controllers/CompletedTaskTab.dart';
import 'package:todo_provider/tabs_controllers/InCompletedTaskTab.dart';

import 'Add_task_Screen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

  //tabController
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo"),

      actions: <Widget>[

        IconButton(
          icon: Icon(Icons.add),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>
                AddTaskScreen()
            )
            );
          },
         )
        ],

        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(text: 'All'),
            Tab(text: 'Incomplete'),
            Tab(text: 'Complete'),
          ],
        ),
      ),

      body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            AllTaskTab(),
            CompletedTaskTab(),
            InCompletedTaskTab(),
          ]
      ),
    );
  }
}
