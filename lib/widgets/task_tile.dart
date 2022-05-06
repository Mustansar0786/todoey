import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(
      {Key? key,
      required this.isChecked,
      required this.taskTitle,
      required this.longPress,
      required this.checkBoxCallback})
      : super(key: key);

  final String taskTitle;
  final bool isChecked;
  final Function(bool?) checkBoxCallback;
  final Function longPress;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        longPress;
      },
      title: Text(taskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          )),
      trailing: Checkbox(
          value: isChecked,
          onChanged: (newvalue) {
            checkBoxCallback(newvalue);
          }),
    );
  }
}
