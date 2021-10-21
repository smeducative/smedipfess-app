import 'package:flutter/material.dart';
import 'package:smedipfess/constants/theme.dart';
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
          Container(
            height: 350,
            color: Colors.white,
            child: Stack(
              children: [
                Container(
                  height: 240,
                  width: double.infinity,
                  color: AppColorTheme.kPrimary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                          left: 20,
                        ),
                        child: Text(
                          'X-1 RPL',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 8.0,
                          left: 20,
                        ),
                        child: Text(
                          'Syakirin Amin',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'inter',
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
