import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'task.dart';

class taskData extends ChangeNotifier{
  List<Task> _tasks=[
    Task(name: "Go To Gym"),
    Task(name: "Code At Every Moment ")
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get taskcount{
    return _tasks.length;
  }

  void addTask( String newvalue){
    final newtask = Task(name: newvalue);
    _tasks.add(newtask);
     notifyListeners();
  }

  void updateTask(Task tsk){
    tsk.toggleDone();
    notifyListeners();
  }

  void delatTask(Task tsk){
    _tasks.remove(tsk);
    notifyListeners();
  }
}