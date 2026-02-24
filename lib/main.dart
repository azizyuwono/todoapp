import 'package:flutter/material.dart';
import 'package:todoapp/pages/todo_page.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffAAC4F5)),
      ),
      home: TodoPage(),
    );
  }
}
