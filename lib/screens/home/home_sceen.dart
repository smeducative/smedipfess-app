import 'package:flutter/material.dart';
import 'package:smedipfess/constants/theme.dart';
import 'package:smedipfess/screens/components/custom_app_bar.dart';
import 'package:smedipfess/screens/components/quick_access_menu.dart';
import 'package:smedipfess/screens/home/pemberitahuan_widget.dart';

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
        title: const Text('Smedipfess'),
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
          Stack(
            children: [
              Container(
                height: 195,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColorTheme.kPrimary,
                  // borderRadius: BorderRadius.only(
                  //   bottomRight: Radius.circular(35),
                  //   bottomLeft: Radius.circular(35),
                  // ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  // Hero profile
                  // kelas, nama lengkap
                  HeroProfile(),

                  // quick menu access
                  QuickAccessMenu(),
                  // Pengumuman
                  PemberitahuanWidget()
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HeroProfile extends StatelessWidget {
  const HeroProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.only(
            top: 10,
            left: 20,
          ),
          child: Text(
            'X-2 RPL',
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'poppins',
              fontWeight: FontWeight.w400,
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
            'Muhammad Syafinda Syakirin Amin',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'poppins',
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
