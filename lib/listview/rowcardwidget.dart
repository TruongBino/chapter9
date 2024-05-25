import 'package:flutter/material.dart';

class RowWithCardWidget extends StatelessWidget {
  const RowWithCardWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          print('Tapped on Row $index');
        },
        child: ListTile(
          shape: RoundedRectangleBorder( // Hình dạng của ListTile
            borderRadius: BorderRadius.circular(25.0),
          ),
          leading: Icon(
            Icons.flight,
            size: 48.0,
            color: Colors.lightBlue,
          ),
          title: Text('Airplane $index'), //Widget để hiển thị tiêu đề của ListTile.
          subtitle: Text('Very Cool'), // Widget để hiển thị mô tả dưới tiêu đề.
          trailing: Text( //Widget để hiển thị ở bên phải của ListTile.
            '${index * 7}%',
            style: TextStyle(color: Colors.lightBlue),
          ),
        ),
      ),
    );
  }
}
