import 'package:bloc_todo_list/cubit/todo_cubit.dart';
import 'package:bloc_todo_list/models/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: BlocBuilder<TodoCubit, List<Todo>>(
        builder: (context, todos) {
        
          return ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
            final Todo todo = todos[index]; // model is important 
            return ListTile(
              title: Text(todo.name),
            );
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add_todo');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
