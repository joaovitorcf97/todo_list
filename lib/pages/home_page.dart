import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/components/todo_card.dart';
import 'package:todo_list/providers/todo_list.dart';
import 'package:todo_list/theme.dart';
import 'package:todo_list/utils/app_routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final todos = Provider.of<TodoList>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          left: 16,
          right: 16,
        ),
        child: Consumer<TodoList>(
          child: Center(
            child: Text('Nenhum todo cadastrado'),
          ),
          builder: (ctx, todo, child) => todo.itemsCount == 0
              ? child!
              : ListView.builder(
                  itemCount: todos.itemsCount,
                  itemBuilder: (ctx, i) => TodoCard(
                    title: todo.itemByIndex(i).title,
                    description: todo.itemByIndex(i).description,
                    date: todo.itemByIndex(i).date,
                  ),
                ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(AppRoutes.todoForm);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 28,
        ),
        backgroundColor: appTheme.myRed,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
