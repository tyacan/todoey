import './../../loader.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _taskTitleField = TextEditingController();
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Colors.white,
      ),
      padding: EdgeInsets.only(top: 20, left: 20.0, right: 20, bottom: 30.0),
      height: 400,
      child: Column(
        children: <Widget>[
          Text(
            'New Task',
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextFormField(
            controller: _taskTitleField,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blueAccent, fontSize: 20),
          ),
          FlatButton(
            onPressed: () => context.read<TaskBrain>().add(
                  title: _taskTitleField.text,
                ),
            color: Colors.blueAccent,
            textColor: Colors.white,
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              child: Text(
                'Add',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
