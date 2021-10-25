import 'package:flutter/material.dart';
import 'package:smedipfess/constants/theme.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore'),
        backgroundColor: AppColorTheme.kPrimary,
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Explore Screen'),
      ),
    );
  }
}
