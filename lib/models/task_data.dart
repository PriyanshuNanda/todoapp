import 'package:flutter/material.dart';
import 'package:todoapp/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _task = [];

  void addTask(String name) {
    _task.add(
      Task(name: name),
    );
    notifyListeners();
  }

  Task getTask(int index) {
    return _task[index];
  }

  int lengthOfTask() {
    return _task.length;
  }

  void updateTask(index) {
    _task[index].toggleDone();
    notifyListeners();
  }

  void deleteTask(int index) {
    _task.removeAt(index);
    notifyListeners();
  }
}
