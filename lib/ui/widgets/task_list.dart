import './../../loader.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskBrain>(
      builder: (context, taskBrain, child) {
        return ListView.builder(
          itemCount: taskBrain.getCount,
          itemBuilder: (context, index) {
            final task = taskBrain.tasks[index];
            return TaskItem(
              title: task.title,
              isDone: task.isDone,
              toggleCheck: (checkboxState) {
                taskBrain.toggle(task);
              },
            );
          },
        );
      },
    );
  }
}
