import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/components/cores.dart';
import 'package:todo_list/providers/todo_list.dart';
import 'package:todo_list/theme.dart';

class TodoForm extends StatefulWidget {
  const TodoForm({Key? key}) : super(key: key);

  @override
  State<TodoForm> createState() => _TodoFormState();
}

class _TodoFormState extends State<TodoForm> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  Color? _cor;

  @override
  void initState() {
    setState(() {
      _cor = Colors.red;
    });
    super.initState();
  }

  void _selectColor(Color color) {
    _cor = color;
  }

  void _submitForm() {
    if (_titleController.text.isEmpty || _descriptionController.text.isEmpty || _cor == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Titulo, descrição ou cor não selecionada',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: appTheme.myRed,
        ),
      );
      return;
    }

    Provider.of<TodoList>(context, listen: false).AddTodo(
      _titleController.text,
      _titleController.text,
      _cor!,
    );

    Navigator.of(context).pop();

    print(_cor);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Adicionar nova tarefa',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        actions: [
          IconButton(
            onPressed: _submitForm,
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Column(
                children: [
                  TextField(
                    controller: _titleController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Titulo',
                    ),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextField(
                    controller: _descriptionController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Descrição',
                    ),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Cores(
                corSelecionada: _selectColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
