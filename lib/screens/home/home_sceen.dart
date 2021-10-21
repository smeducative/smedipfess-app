import 'package:flutter/material.dart';
import 'package:smedipfess/screens/components/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('Smedipfesss'),
        showProfilePhoto: true,
        profilePhoto: const AssetImage("assets/images/Avatar.png"),
        onProfilePhotoPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Profile photo pressed'),
            ),
          );
        },
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          const Center(
            child: Text('Home screen'),
          ),
        ],
      ),
    );
  }
}
