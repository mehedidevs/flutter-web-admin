import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _HomeState();
}

class _HomeState extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      color: Colors.red,
      child: Text("Home2", style: TextStyle(color: Colors.brown),),
    );
  }
}
