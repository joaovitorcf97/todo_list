import 'dart:math';

import 'package:flutter/material.dart';
import 'package:todo_list/models/todo.dart';

class TodoList with ChangeNotifier {
  List<Todo> _items = [];

  List<Todo> get items {
    return [...items];
  }

  int get itemsCount {
    return _items.length;
  }

  Todo itemByIndex(int index) {
    return _items[index];
  }

  void AddTodo(String title, String description, Color color) {
    final newTodo = Todo(
      id: Random().nextDouble().toString(),
      title: title,
      description: description,
      date: DateTime.now(),
      color: color,
    );

    _items.add(newTodo);

    notifyListeners();
  }

  // Future<Todo> loadTodos() async {
  //   return _items[].;
  // }
}
