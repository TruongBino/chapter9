import 'package:chapter9/stack/stack_favorite.dart';
import 'package:chapter9/stack/stack_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomeStackWidget());
}

class HomeStackWidget extends StatelessWidget {
  HomeStackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Stack'),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: 7,
            itemBuilder: (BuildContext context, int index) {
              if (index.isEven) {
                return const StackWidget();
              } else {
                return const StackFavoriteWidget();
              }
            },
          ),
        ),
      ),
    );
  }
}