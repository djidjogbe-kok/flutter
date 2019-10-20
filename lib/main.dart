import 'package:flutter/material.dart';
import 'screens/tasks_screen.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TasksScreen(),
      theme: ThemeData.light().copyWith(
        primaryColor:Color(0xFF3e2723),
        primaryColorDark: Color(0xFF1b0000),



      ),


    );
  }
}
