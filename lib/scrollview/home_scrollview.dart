import 'package:chapter9/scrollview/sliver_appbar_widget.dart';
import 'package:chapter9/scrollview/sliver_grid_widget.dart';
import 'package:chapter9/scrollview/sliver_list_widget.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(const HomeCustomScrollView());
}
class HomeCustomScrollView extends StatelessWidget {
  const HomeCustomScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text('CustomScrollView - Slivers'),
          elevation: 0.0,
        ),
        body: const CustomScrollView(
          slivers: <Widget>[
            SliverAppBarWidget(),
            SliverListWidget(),
            SliverGridWidget(),
          ],
        ),
      ),
    );
  }
}
