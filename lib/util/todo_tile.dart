import "package:flutter/material.dart";

class ToDoTile extends StatelessWidget {
  final int index;
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;
  final void Function(int) deleteTask;

  const ToDoTile(
      {super.key,
      required this.index,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged,
      required this.deleteTask});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  value: taskCompleted,
                  onChanged: onChanged,
                  activeColor: Colors.black,
                ),
                Text(
                  taskName,
                  style: TextStyle(
                      decoration: taskCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () => deleteTask(index),
                child: const Icon(Icons.delete)),
                
          ],
        ),
      ),
    );
  }
}
