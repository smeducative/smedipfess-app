import 'package:flutter/material.dart';
import 'package:smedipfess/constants/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class CustomBottomNavigationBar extends StatefulWidget {
  int selectedIndex;
  void Function(int) onItemTapped;

  CustomBottomNavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 15.0,
      ),
      margin: const EdgeInsets.all(10.0),
      color: Colors.transparent,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: SizedBox(
            height: 70,
            child: BottomNavigationBar(
              currentIndex: widget.selectedIndex,
              onTap: widget.onItemTapped,
              elevation: 0,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/home.svg",
                    color: widget.selectedIndex == 0
                        ? AppColorTheme.kPrimary
                        : Colors.grey,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/box.svg",
                    color: widget.selectedIndex == 1
                        ? AppColorTheme.kPrimary
                        : Colors.grey,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/bag.svg",
                    color: widget.selectedIndex == 2
                        ? AppColorTheme.kPrimary
                        : Colors.grey,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/user.svg",
                    color: widget.selectedIndex == 3
                        ? AppColorTheme.kPrimary
                        : Colors.grey,
                  ),
                  label: '',
                ),
              ],
            )),
      ),
    );
  }
}
