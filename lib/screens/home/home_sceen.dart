import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
          Container(
            height: 350,
            color: Colors.white,
            child: Stack(
              children: [
                Container(
                  height: 190,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: AppColorTheme.kPrimary,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                          left: 20,
                        ),
                        child: Text(
                          'X-1 RPL',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 8.0,
                          left: 20,
                        ),
                        child: Text(
                          'Syakirin Amin',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'inter',
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      // quick menu access
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            QuickMenu(
                              assetName: 'assets/icons/Calendar.svg',
                              title: 'Jadwal',
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            QuickMenu(
                              assetName: 'assets/icons/Book-check.svg',
                              title: 'Presensi',
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            QuickMenu(
                              assetName: 'assets/icons/Book-mark.svg',
                              title: 'Tugas',
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            QuickMenu(
                              assetName: 'assets/icons/Invoice.svg',
                              title: 'SPP',
                            ),
                          ],
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

class QuickMenu extends StatelessWidget {
  final String assetName;
  final String title;

  const QuickMenu({Key? key, required this.assetName, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: AppColorTheme.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: SvgPicture.asset(
              assetName,
              width: 32,
              height: 32,
              color: Colors.black,
            ),
          ),
        ),
        Center(
          child: Text(
            title,
            style: const TextStyle(
              fontFamily: 'inter',
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
