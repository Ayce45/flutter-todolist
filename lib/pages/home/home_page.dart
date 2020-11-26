import 'package:flutter/material.dart';
import 'package:todo_list/pages/home/widget/lets_plan.dart';
import 'package:todo_list/pages/home/widget/my_clipper.dart';
import 'package:todo_list/pages/home/widget/my_schedule.dart';
import 'package:todo_list/pages/home/widget/todo_list.dart';
import 'package:todo_list/style/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: primary,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Stack(
          children: [
            ClipPath(
              clipper: ClipPainter(),
              child: Container(
                color: primary,
              ),
            ),
            Container(
              child: Column(
                children: [
                  Expanded(child: Container(child: LetsPlan()), flex: 20),
                  Expanded(child: Container(child: MySchedule()), flex: 25),
                  Expanded(
                      child: Container(
                        color: white,
                        child: TodoList(),
                      ),
                      flex: 70)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
