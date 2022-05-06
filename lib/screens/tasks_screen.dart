import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_data.dart';
import 'package:todoey/model/tasks.dart';
import 'package:todoey/screens/add_new_task.dart';

import '../widgets/task_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: const Color(0xff757575),
                context: context,
                builder: (BuildContext context) => AddNewTask(
                      tasks: Provider.of<TaskData>(context).task,
                      addTaskCallback: (newTaskTitle) {
                        Provider.of<TaskData>(context, listen: false)
                            .addTask(Tasks(newTaskTitle));
                        // setState(() {
                        //   Provider.of<TaskData>(context)
                        //       .task
                        //       .add(Tasks(newTaskTitle));
                        // });
                        Navigator.pop(context);
                      },
                    ));
          }),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.list,
                      color: Colors.lightBlueAccent,
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Todoey",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 30),
                ),
                Text(
                  "${Provider.of<TaskData>(context).task.length} Task",
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: TaskList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
