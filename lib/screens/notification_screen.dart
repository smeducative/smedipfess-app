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
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const NotificationItem();
        },
        itemCount: 5,
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  const NotificationItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18.0),
      decoration: const BoxDecoration(
        color: AppColorTheme.primaryExtraSoft,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Kamu hadir di sekolah',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            '20-08-2021',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w200,
            ),
          )
        ],
      ),
    );
  }
}
