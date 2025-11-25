import 'package:flutter/foundation.dart';
import 'dart:collection';
import '../models/todomodel.dart';

class TodoProvider with ChangeNotifier {
  final List<Todo> _tasks = [
    Todo(id: '1', title: 'workout', isChecked: false),
    Todo(id: '2', title: 'ssd', isChecked: true)
  ];

  UnmodifiableListView<Todo> get allTasks => UnmodifiableListView(_tasks);

  void addTask(String title) {
    if (title.isNotEmpty) {
      _tasks.add(
        Todo(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          title: title,
        ),
      );

      notifyListeners();
    }
  }

  void deleteTask(String id) {
    _tasks.removeWhere((task) => task.id == id);
    notifyListeners();
  }

  void toggleTask(Todo task) {
    task.toggleChekced();

    notifyListeners();
  }
}
