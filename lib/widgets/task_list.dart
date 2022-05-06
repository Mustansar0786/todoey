import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, value, child) {
        return ListView.builder(
          itemCount: value.task.length,
          itemBuilder: (context, index) {
            var task = value.task[index];
            return TaskTile(
              //* we can also use geture detector
              longPress: () {
                value.removeTask(index);
              },
              isChecked: task.isDone,
              taskTitle: task.name,
              checkBoxCallback: (checkboxState) {
                value.toggle(task);
              },
            );
          },
        );
      },
    );
  }
}
