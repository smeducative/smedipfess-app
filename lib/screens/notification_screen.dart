import 'package:flutter/material.dart';
import 'package:smedipfess/constants/theme.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifikasi'),
        backgroundColor: AppColorTheme.kPrimary,
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Notifikasi screen'),
      ),
    );
  }
}
