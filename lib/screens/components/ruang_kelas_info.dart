import 'package:flutter/material.dart';
import 'package:smedipfess/constants/theme.dart';

class RuangKelasInfo extends StatelessWidget {
  const RuangKelasInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Container(
        height: 100,
        decoration: const BoxDecoration(
          color: AppColorTheme.primarySoft,
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(
                0,
                8.0,
              ),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '29',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.black54,
                        offset: Offset(1, 2),
                        blurRadius: 4,
                      )
                    ],
                  ),
                ),
                Text(
                  'Anggota',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.black54,
                        offset: Offset(1, 1),
                        blurRadius: 3,
                      )
                    ],
                  ),
                ),
              ],
            ),
            // cowok
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '10',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.black54,
                        offset: Offset(1, 2),
                        blurRadius: 4,
                      )
                    ],
                  ),
                ),
                Text(
                  'Cowok',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.black54,
                        offset: Offset(1, 1),
                        blurRadius: 3,
                      )
                    ],
                  ),
                ),
              ],
            ),
            // cewek
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '19',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.black54,
                        offset: Offset(1, 2),
                        blurRadius: 4,
                      )
                    ],
                  ),
                ),
                Text(
                  'Cewek',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.black54,
                        offset: Offset(1, 1),
                        blurRadius: 3,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
