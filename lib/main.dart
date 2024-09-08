import 'package:bloc_todo_list/add_todo_page.dart';
import 'package:bloc_todo_list/cubit/todo_cubit.dart';
import 'package:bloc_todo_list/todo_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

/// Main App Widget
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit(),
      child:  MaterialApp(
        routes: {
          '/': (context) => const TodoList(),
          '/add_todo': (context) => const AddTodoPage(),
        },
       
      ),
    );
  }
}
