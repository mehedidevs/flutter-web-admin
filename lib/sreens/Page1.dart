import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      color: Colors.red,
      child: Center(child: Text("Home", style: TextStyle(color: Colors.brown),)),
    );
  }
}
