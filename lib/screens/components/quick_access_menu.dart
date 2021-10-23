import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smedipfess/constants/theme.dart';

class QuickAccessMenu extends StatelessWidget {
  const QuickAccessMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 22,
        right: 22,
        top: 25,
      ),
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
