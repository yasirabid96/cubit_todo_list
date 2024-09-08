import 'package:bloc_todo_list/models/todo_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void add(String title) {
    if (title.isEmpty) {
      addError('Title is empty');
      return;
    }
    final Todo todo = Todo(name: title, date: DateTime.now());
    state.add(todo);
    // emit(state); // this will not work because the state is List and it is mutable so it will not trigger the UI to rebuild
    emit(List.from(state));
  }

  @override
  void onChange(Change<List<Todo>> change) {
    // TODO: implement onChange
    print(change);
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    print(error);
    super.onError(error, stackTrace);
  }
}
