import 'package:flutter/material.dart';

class GridViewBuilder extends StatelessWidget {
  GridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    List<IconData>_iconList = GridIcons().getIconList();
    return Scaffold(
      body: GridView.builder(
        itemCount: 20,
        padding: EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150.0
        ),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.green.shade50,
            margin: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    _iconList[index],
                    size: 50.0,
                    color: Colors.green,
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
        },
      ),
    );
  }
}
class GridIcons {
  final List<IconData> iconList = [];
  List<IconData> getIconList() {
    iconList
      ..add(Icons.free_breakfast)
      ..add(Icons.access_alarms)
      ..add(Icons.directions_car)
      ..add(Icons.flight)
      ..add(Icons.cake)
      ..add(Icons.card_giftcard)
      ..add(Icons.change_history)
      ..add(Icons.face)
      ..add(Icons.star)
      ..add(Icons.headset_mic)
      ..add(Icons.directions_walk)
      ..add(Icons.sentiment_satisfied)
      ..add(Icons.cloud_queue)
      ..add(Icons.exposure)
      ..add(Icons.gps_not_fixed)
      ..add(Icons.child_friendly)
      ..add(Icons.child_care)
      ..add(Icons.edit_location)
      ..add(Icons.event_seat)
      ..add(Icons.lightbulb_outline);
    return iconList;
  }
}