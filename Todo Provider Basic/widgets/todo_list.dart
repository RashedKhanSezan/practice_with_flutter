import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/todo_provider.dart';
import 'todo_list_item.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
  
    final tasks = context.watch<TodoProvider>().allTasks;

    if (tasks.isEmpty) {
      return const Center(child: Text('No tasks yet! Add one below.'));
    }

    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        return TodoListItem(task: task);
      },
    );
  }
}