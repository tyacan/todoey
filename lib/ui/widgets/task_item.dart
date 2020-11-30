import './../../loader.dart';

class TaskItem extends StatelessWidget {
  final String title;
  final bool isDone;
  final Function toggleCheck;
  final Function removeItem;

  TaskItem({
    this.title,
    this.isDone,
    this.toggleCheck,
    this.removeItem,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration: isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      onLongPress: removeItem,
      trailing: Checkbox(
        value: isDone,
        onChanged: toggleCheck,
      ),
    );
  }
}
