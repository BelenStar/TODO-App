import 'package:todo_app/src/classes/todo_item.dart';
import 'package:flutter/material.dart';

class TodoProvider extends ChangeNotifier {
  final List<TodoItem> _todoItems = [];

  void addTask(TodoItem todo) {
    _todoItems.add(todo);
    notifyListeners();
  }

  List<TodoItem> get todos => _todoItems;

  void markCoompleted(int index) {
    _todoItems.removeAt(index);
    notifyListeners();
  }
}
