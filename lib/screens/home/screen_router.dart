import 'package:flutter/material.dart';
import 'package:smedipfess/constants/theme.dart';
import 'package:smedipfess/screens/classmate_screen.dart';
import 'package:smedipfess/screens/components/custom_bottom_navigation_bar.dart';
import 'package:smedipfess/screens/explore_screen.dart';
import 'package:smedipfess/screens/home/home_sceen.dart';
import 'package:smedipfess/screens/notification_screen.dart';

class ScreenRouter extends StatefulWidget {
  const ScreenRouter({Key? key}) : super(key: key);

  @override
  _ScreenRouterState createState() => _ScreenRouterState();
}

class _ScreenRouterState extends State<ScreenRouter> {
  int _selectedIndex = 0;

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          [
            const HomeScreen(),
            const ClassMateScreen(),
            const ExploreScreen(),
            const NotificationScreen(),
          ][_selectedIndex],
          const BottomGradientWidget(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        onItemTapped: _onItemTapped,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}

class BottomGradientWidget extends StatelessWidget {
  const BottomGradientWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        decoration: BoxDecoration(
          gradient: AppColorTheme.bottomShadow,
        ),
      ),
    );
  }
}
