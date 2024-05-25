import 'package:flutter/material.dart';

class GridViewCount extends StatelessWidget {
  GridViewCount({super.key});
  final _iconList = [
    Icons.ac_unit,
    Icons.access_alarm,
    Icons.access_time,
    Icons.access_time,
    Icons.add_alarm_outlined,
    Icons.add_business_rounded,
    Icons.add_circle,
    Icons.multitrack_audio,
    Icons.sd_card,
    Icons.label_important,
    Icons.dangerous_outlined,
    Icons.add_chart_outlined,
    Icons.heart_broken,
    Icons.music_note,
    Icons.access_time,
    Icons.add_alarm_outlined,
    Icons.add_business_rounded,
    // Thêm các biểu tượng khác vào đây
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
          crossAxisCount: 3,
          padding: const EdgeInsets.all(8.0),
          children: List.generate(50, (index) {
            print('_buildGridView $index');
            return Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      _iconList[0],
                      size: 50.0,
                      color: Colors.blue,
                    ),
                    Text(
                      'Index $index',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  print('Row $index');
                },
              ),
            );
          }),
        ),
    );
  }
}