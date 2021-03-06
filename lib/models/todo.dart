import 'package:flutter/material.dart';

class Todo {
  final String id;
  final String title;
  final String description;
  final DateTime date;
  final Color color;

  Todo({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.color,
  });
}
