import 'package:flutter/material.dart';
import 'package:todo_list/style/colors.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 100.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _periodSelector("Today", true),
                  _periodSelector("Week", false),
                  _periodSelector("Month", false),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    _todoCard(green, "To pet Richhard", "10:30 AM"),
                    _todoCard(green, "Water the flower", "12:00 AM"),
                    _todoCard(red, "Branch with Alice", "2:00 AM"),
                    _todoCard(red, "Go to cinema", "5:00 AM"),
                    _todoCard(green, "Clean my room", "6:00 AM"),
                    _todoCard(red, "Work on the schedue", "1:00 PM"),
                    _todoCard(yellow, "Speak to cat", "2:00 PM"),
                    _todoCard(green, "Sleep a lot", "10:00 AM"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _periodSelector extends StatefulWidget {
  _periodSelector(this._text, this._selected);
  String _text;
  bool _selected;

  @override
  __periodSelectorState createState() => __periodSelectorState();
}

class __periodSelectorState extends State<_periodSelector> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: white,
      child: Ink(
        child: InkWell(
          onTap: () {
            setState(() {
              widget._selected = !widget._selected;
            });
          },
          child: Container(
            padding: EdgeInsets.only(
              bottom: 3, // space between underline and text
            ),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: widget._selected ? primary : white, // Text colour here
              width: 2.5, // Underline width
            ))),
            child: Text(
              widget._text,
              style: TextStyle(
                  fontSize: 25, color: widget._selected ? primary : secondary),
            ),
          ),
        ),
      ),
    );
  }
}

class _todoCard extends StatelessWidget {
  _todoCard(this._color, this._text, this._date);

  Color _color;
  String _text;
  String _date;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(3),
              topRight: Radius.circular(3),
              bottomLeft: Radius.circular(3),
              bottomRight: Radius.circular(3)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.12),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Material(
          child: Ink(
            child: InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.circle,
                          size: 15,
                          color: _color,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          _text,
                          style: TextStyle(fontSize: 15),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          _date,
                          style: TextStyle(color: secondary),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: secondary,
                          size: 16,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
