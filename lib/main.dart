import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: HomeScreen(),
    ));

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Smedipfess"),
      ),
      body: const Center(
        child: Text("Smedipfess"),
      ),
    );
  }
}
