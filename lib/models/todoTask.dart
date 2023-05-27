// ignore: slash_for_doc_comment

/*
 * ToDoTask Model to hold ToDoTask's values
 */
import 'dart:convert';

class ToDoTask{
  int? id;
  String? task;
  bool? isDone;

  ToDoTask({
    this.id,
    this.task,
    this.isDone,
  });

  factory ToDoTask.fromJson(Map<String, dynamic> json) => ToDoTask(
        id: json["id"],
        task: json["task"],
        isDone: json["isDone"],
  );

  Map<String, dynamic> toJson() => {
        "id": id,
        "task": task,
        "isDone": isDone,
  };

}

ToDoTask oneToDoTaskFromJson(String str) => ToDoTask.fromJson(json.decode(str));

String oneToDoTaskToJson(ToDoTask data) => json.encode(data.toJson());

List<ToDoTask> toDoTaskFromJson(String str) => List<ToDoTask>.from(json.decode(str).map((x) => ToDoTask.fromJson(x)));

String toDoTaskToJson(List<ToDoTask> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
