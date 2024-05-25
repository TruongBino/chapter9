import 'package:chapter9/card/card.dart';
import 'package:chapter9/gridview/gridview_builder.dart';
import 'package:chapter9/listview/listview.dart';
import 'package:chapter9/scrollview/home_scrollview.dart';
import 'package:chapter9/stack/home_stack.dart';
import 'package:flutter/material.dart';
import 'package:chapter9/gridview/gridview_count.dart';
import 'package:chapter9/gridview/gridview_extent.dart';
void main(){
  runApp(const Home());
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  late List<Widget> _listPages;
  late Widget _currentPage;

  @override
  void initState() {
    super.initState();
    _listPages = [
      GridViewCount(),
      GridViewExtent(),
      GridViewBuilder(),
      const ListViewWidget(),
      const CardWidget(),
      HomeStackWidget(),
      const HomeCustomScrollView(),
      // Add more pages if needed
    ];
    _currentPage = GridViewExtent(); // Default to the first page
  }

  void _changePage(int selectedIndex) {
    setState(() {
      _currentIndex = selectedIndex;
      _currentPage = _listPages[selectedIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    Orientation _orientation = MediaQuery.of(context).orientation;
    _orientation == Orientation.portrait;
    return MaterialApp(
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: const Text('GridView-PlayGround'),
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: _currentPage,
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.black,
              selectedItemColor: Colors.blueAccent,
              unselectedItemColor: Colors.black,
              currentIndex: _currentIndex,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.grid_view),
                  label: 'Count',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.grid_off),
                  label: 'Extent',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.build),
                  label: 'Builder',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.list),
                  label: 'ListView',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.ad_units_rounded),
                    label: 'Card'
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_box_outlined),
                    label: 'Stack'
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.playlist_play_outlined),
                    label: 'ScrollView'
                ),
              ],
              onTap: _changePage,
            ),
          ),
        ),
    );
  }
}
