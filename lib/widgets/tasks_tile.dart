import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final String name;
  final Function tasksCallback;
  final bool isChecked;
  final Function onLongPresss;

  const TaskTile({
    Key? key,
    required this.name,
    required this.tasksCallback,
    required this.isChecked,
    required this.onLongPresss,
  }) : super(key: key);

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      enableFeedback: true,
      title: Text(
        widget.name,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          decoration: widget.isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: widget.isChecked,
        onChanged: (bool? newValue) {
          setState(() {
            widget.tasksCallback();
          });
        },
      ),
      // onLongPress: widget.onLongPresss(),
    );
  }
}
