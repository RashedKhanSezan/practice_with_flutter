import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/todomodel.dart';
import '../providers/todo_provider.dart';

class TodoListItem extends StatelessWidget {
  final Todo task;

  const TodoListItem({
    required this.task,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: task.isChecked,
        onChanged: (bool? value) {
          context.read<TodoProvider>().toggleTask(task);
        },
      ),
      title: Text(
        task.title,
        style: TextStyle(
          decoration: task.isChecked ? TextDecoration.lineThrough : null,
          color: task.isChecked ? Colors.grey : Colors.black,
        ),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete, color: Colors.red),
        onPressed: () {
          context.read<TodoProvider>().deleteTask(task.id);
        },
      ),
    );
  }
}
