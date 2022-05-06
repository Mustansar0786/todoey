import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/model/tasks.dart';

class TaskData extends ChangeNotifier {
  final List<Tasks> _task = [
    Tasks("Buy Milk"),
    Tasks("Buy eggs"),
    Tasks("By bread"),
  ];
  UnmodifiableListView<Tasks> get task {
    return UnmodifiableListView(_task);
  }

  void addTask(Tasks newtask) {
    _task.add(newtask);
    notifyListeners();
  }

  void toggle(Tasks task) {
    task.toggleDone();
    notifyListeners();
  }

  void removeTask(int index) {
    _task.removeAt(index);
    notifyListeners();
  }
}
