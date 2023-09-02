import 'package:flutter/material.dart';
import 'package:todoapp/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task_data.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  // int length= task.length;
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.getTask(index).isDone,
              name: taskData.getTask(index).name,
              tasksCallback: () {
                setState(
                  () {
                    Provider.of<TaskData>(context, listen: false)
                        .updateTask(index);
                  },
                );
              },
              onLongPresss: () {
                taskData.deleteTask(index);
              },
            );
          },
          itemCount: taskData.lengthOfTask(),
        );
      },
    );
  }
}
