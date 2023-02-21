import 'package:flutter/material.dart';
import 'package:todo_app/src/app.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/src/provider/todo_provider.dart';

void main() {
  runApp(ChangeNotifierProvider<TodoProvider>(
    child: MyApp(),
    create: (_) => TodoProvider(),
  ));
}
