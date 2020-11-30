import './../../loader.dart';

class TaskItem extends StatelessWidget {
  final String title;
  final bool isDone;
  final Function toggleCheck;

  TaskItem({this.title, this.isDone, this.toggleCheck});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration: isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isDone,
        onChanged: toggleCheck,
      ),
    );
  }
}
