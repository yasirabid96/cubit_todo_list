import 'package:bloc_todo_list/cubit/todo_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTodoPage extends StatelessWidget {
  const AddTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
   TextEditingController textEditingController  = TextEditingController();
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Title',
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // BlocProvider.of<TodoCubit>(context).add(textEditingController.text.trim());
                // one way to do the same above line
                context.read<TodoCubit>().add(textEditingController.text.trim());
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}