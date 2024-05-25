import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: const Stack(
        children: <Widget>[
          Image(
            image: AssetImage('assets/images/tree.jpg'),
          ),
          Positioned(
            bottom: 10.0,
            left: 10.0,
            width: 100,
            height: 100,
            child: CircleAvatar(
              radius: 32.0,
              backgroundImage: AssetImage('assets/images/lion.jpg'),
            ),
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: Text(
              'lion',
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}