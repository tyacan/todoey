import '../../loader.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.transparent,
            isScrollControlled: true,
            context: context,
            builder: (context) => AddTaskScreen(),
          );
        },
      ),
      body: Container(
        padding: EdgeInsets.only(top: 40.0),
        color: Colors.blueAccent,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20.0, bottom: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      child: Icon(
                        Icons.menu,
                        color: Colors.blueAccent,
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Todoey',
                    style: TextStyle(
                        fontSize: 60.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '12 tasks',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
              child: TaskList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
