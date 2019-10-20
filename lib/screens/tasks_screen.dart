import 'package:flutter/material.dart';
import 'package:flutter_todo/models/task.dart';
import 'package:flutter_todo/screens/add_task.dart';
import 'package:flutter_todo/widgets/task_list.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
  
}

class _TasksScreenState extends State<TasksScreen> {

  List<Task> tasks=[  
    Task(name: 'Call J'),
    Task(name: 'Buy Dado'),
    Task(name: 'Clean Tabitha'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => AddTaskScreen((newTask){
                setState(() {
                  tasks.add(Task(name: newTask));
                });
                Navigator.pop(context);


          }));
        },
        backgroundColor: Color(0xFFFF9000),
        child: Icon(Icons.add,color: Colors.white,),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Color(0xFFFF9000),
                  ),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "ToDo-Liste",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '${tasks.length} Tasks',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: TaskList(tasks),
            ),
          )
        ],
      ),
    );
  }
}
