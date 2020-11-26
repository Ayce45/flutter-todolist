import 'package:flutter/material.dart';
import 'package:todo_list/style/colors.dart';

class MySchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              child: Text(
                'My schedule',
                style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.normal, color: white),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _categoryCard(
                    Icon(
                      Icons.info_outline,
                      size: 35,
                      color: primary,
                    ),
                    "Vacation",
                    12),
                _categoryCard(
                    Icon(
                      Icons.shopping_bag_outlined,
                      size: 35,
                      color: red,
                    ),
                    "Grocery",
                    24),
                _categoryCard(
                    Icon(
                      Icons.home_outlined,
                      size: 35,
                      color: pink,
                    ),
                    "Work",
                    3)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _categoryCard extends StatelessWidget {
  _categoryCard(this._icon, this._text, this._items);
  final int _items;
  final Widget _icon;
  final String _text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, top: 30.0, bottom: 30.0),
      child: Container(
        height: 10,
        width: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(3),
              topRight: Radius.circular(3),
              bottomLeft: Radius.circular(3),
              bottomRight: Radius.circular(3)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.09),
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
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    _icon,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '$_text',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                          Text(
                            '$_items items',
                            style: TextStyle(fontSize: 12, color: secondary),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
