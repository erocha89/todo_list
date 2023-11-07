import 'dart:convert';

class Todo {
  Todo({required this.title, required this.dateTime});

  Todo.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        dateTime = DateTime.parse(json['datetime']);

  String title;
  DateTime dateTime;

  Map<String, dynamic> toJason() {
    return {
      'title': title,
      'dateTime': dateTime.toIso8601String(),
    };
  }
}
