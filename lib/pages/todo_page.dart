import 'package:flutter/material.dart';
import 'package:todoapp/widgets/todo_item.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Todo')),

      body: Column(children: [TodoItem()]),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => inputTodo(context),
      ),
    );
  }
}

void inputTodo(BuildContext context) {
  final controller = TextEditingController();
  showDialog(
    context: context,
    builder: (BuildContext context) => Dialog(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: controller,
              decoration: InputDecoration(hintText: 'Input Todo')),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: Text('Done')),
          ],
        ),
      ),
    ),
  );
}
