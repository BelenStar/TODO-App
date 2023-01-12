import 'package:flutter/material.dart';
import 'package:todo_app/src/pages/todo_page.dart';


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: TodoPage()),
      );
  }
}