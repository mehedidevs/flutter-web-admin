import 'package:flutter/material.dart';
import 'package:flutter_web/sreens/Page1.dart';

import 'Page2.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool isExpanded = false;

  // final List<Widget> _screeenList = [
  //   Container(
  //     alignment: Alignment.center,
  //     color: Colors.brown,
  //     child: Text("Home"),
  //   ),
  //   Container(
  //     color: Colors.brown,
  //     child: Text("Chart"),
  //   ),
  //   Container(
  //     color: Colors.brown,
  //     child: Text("Profile"),
  //   ),
  //   Container(
  //     color: Colors.brown,
  //     child: Text("Security"),
  //   ),
  //   Container(
  //     color: Colors.brown,
  //     child: Text("Note"),
  //   ),
  //   Container(
  //     color: Colors.brown,
  //     child: Text("Settings"),
  //   ),
  // ];
  final List<Widget> _screeenList = [
    Home(),
    Home2(),
    Home(),
    Home2(),
    Home(),
    Home2(),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              icon: Icon(Icons.menu),
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          NavigationRail(
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              extended: isExpanded,
              backgroundColor: Colors.black12,
              selectedLabelTextStyle: TextStyle(color: Colors.brown),
              selectedIconTheme:
                  IconThemeData(color: Colors.brown, opacity: 0.9),
              unselectedLabelTextStyle: TextStyle(color: Colors.blueGrey),
              unselectedIconTheme:
                  IconThemeData(color: Colors.blueGrey, opacity: 0.9),
              destinations: [
                NavigationRailDestination(
                    icon: Icon(Icons.home), label: Text("Home")),
                NavigationRailDestination(
                    icon: Icon(Icons.stacked_bar_chart), label: Text("Chart")),
                NavigationRailDestination(
                    icon: Icon(Icons.face), label: Text("Profile")),
                NavigationRailDestination(
                    icon: Icon(Icons.safety_check), label: Text("Security")),
                NavigationRailDestination(
                    icon: Icon(Icons.sticky_note_2), label: Text("Note")),
                NavigationRailDestination(
                    icon: Icon(Icons.settings), label: Text("Settings")),
              ],
              selectedIndex: _selectedIndex),
          Expanded(child: _screeenList[_selectedIndex]),
        ],
      ),
    );
  }
}
