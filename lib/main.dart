import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/pages/todo_form.dart';
import 'package:todo_list/providers/todo_list.dart';
import 'package:todo_list/theme.dart';
import 'package:todo_list/utils/app_routes.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => TodoList(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todo List',
        theme: appTheme.theme,
        home: const HomePage(),
        routes: {
          AppRoutes.todoForm: (ctx) => const TodoForm(),
        },
      ),
    );
  }
}
