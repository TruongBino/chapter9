import 'package:chapter9/listview/hearder.dart';
import 'package:flutter/material.dart';
import 'package:chapter9/listview/rowcardwidget.dart';
import 'package:chapter9/listview/rowwidget.dart';
class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 20, //Số lượng phần tử trong ListView.
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return HeaderWidget(index: index);
              } else if (index >= 1 && index <= 3) {
                return RowWithCardWidget(index: index);
              } else {
                return RowWidget(index: index);
              }
            },
          ),
        ),
    );
  }
}
