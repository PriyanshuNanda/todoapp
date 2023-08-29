import 'package:flutter/material.dart';
import 'package:todoapp/widgets/tasks_tile.dart';


class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Widget> tasks=[];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: tasks,
    );
  }
}
