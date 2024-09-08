// ignore_for_file: public_member_api_docs, sort_constructors_first
class Todo {
  final String name;
  final DateTime date;

  Todo({required this.name, required this.date});

  

  @override
  String toString() => 'Todo(name: $name, date: $date)';
}
