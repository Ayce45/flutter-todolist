import 'package:flutter/material.dart';
import 'package:todo_list/style/colors.dart';

class LetsPlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              'Let\'s plan',
              style: TextStyle(
                  color: white, fontSize: 45, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: Image.asset('assets/giraffe.png'))
        ],
      ),
    );
  }
}
