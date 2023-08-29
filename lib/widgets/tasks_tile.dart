import 'package:flutter/material.dart';

bool isChanged = false;

class TaskTile extends StatefulWidget {
  const TaskTile({super.key});
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  void checkboxChecker(bool newValue) {
    setState(() {
      isChanged = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a text',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          decoration: isChanged ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckbox(
        checker: isChanged,
        function: checkboxChecker,
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final Function function;
  final bool checker;

  const TaskCheckbox(
      {super.key, required this.checker, required this.function});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checker,
      onChanged: (value) {
        function(value);
      },
    );
  }
}
