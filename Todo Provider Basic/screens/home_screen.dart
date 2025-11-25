import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/todo_provider.dart';
import '../widgets/todo_list.dart';
import '../widgets/add_task_dialog.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final taskCount = context.watch<TodoProvider>().allTasks.length;

    return Scaffold(
      appBar: AppBar(
        title: Text('My To-Do List ($taskCount tasks)'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: const TodoList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => const AddTaskDialog(),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
