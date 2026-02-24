import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Mancing',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      leading: Checkbox(value: false, onChanged: (_) {}),
      trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
    );
  }
}
