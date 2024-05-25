import 'package:flutter/material.dart';

class GridViewExtent extends StatelessWidget {
  GridViewExtent({Key? key});

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
    // Thêm các biểu tượng khác vào đây nếu cần
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: GridView.extent(
            maxCrossAxisExtent: 175.0,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8.0),
            children: List.generate(_iconList.length, (index) {
              print('_buildGridViewExtent $index');
              return Card(
                margin: const EdgeInsets.all(8.0),
                child: InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        _iconList[index],
                        size: 48.0,
                        color: Colors.blue,
                      ),
                      Text(
                        'Index $index',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16.0,
                        ),
                      )
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
