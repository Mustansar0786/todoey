import 'package:flutter/material.dart';
import 'package:todoey/model/tasks.dart';

class AddNewTask extends StatelessWidget {
  const AddNewTask({
    Key? key,
    required this.tasks,
    required this.addTaskCallback,
  }) : super(key: key);

  final List<Tasks> tasks;
  final Function addTaskCallback;

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = "";
    return Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Add Task",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                ),
              ),
              TextField(
                onChanged: ((value) {
                  newTaskTitle = value;
                }),
                autofocus: true,
                textAlign: TextAlign.center,
                cursorColor: Colors.lightBlueAccent,
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  addTaskCallback(newTaskTitle);
                },
                child: const Text("Add"),
              )
            ],
          ),
        ));
  }
}
