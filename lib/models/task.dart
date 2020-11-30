import './../loader.dart';

class Task with ChangeNotifier, DiagnosticableTreeMixin {
  final String title;
  bool isDone = false;

  Task({this.title, this.isDone = false});

  void toggleDone() {
    isDone = ! isDone;
  }
}
