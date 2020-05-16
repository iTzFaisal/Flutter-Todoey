import 'package:flutter/material.dart';
import 'package:todeyflutter/models/task.dart';
import 'package:todeyflutter/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  List<Task> tasks;

  TasksList(this.tasks);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallBack: (newValue) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            },
          );
        });
  }
}
