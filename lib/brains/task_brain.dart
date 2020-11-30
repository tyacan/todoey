import './../loader.dart';

class TaskBrain with ChangeNotifier, DiagnosticableTreeMixin {
  List<Task> _task = [
    Task(title: 'one'),
    Task(title: 'two'),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_task);

  int get getCount => _task.length;

  void add({String title}) {
    final task = Task(title: title);
    _task.add(task);
    notifyListeners();
  }

  void remove({int index}) {
    _task.removeAt(index);
    notifyListeners();
  }

  void toggle(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
