import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smedipfess/constants/theme.dart';
import 'package:smedipfess/screens/components/ruang_kelas_info.dart';

class ClassMateScreen extends StatelessWidget {
  const ClassMateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Ruang Kelas',
          style: TextStyle(fontFamily: 'poppins'),
        ),
        backgroundColor: AppColorTheme.kPrimary,
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.28,
            alignment: Alignment.bottomRight,
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              color: AppColorTheme.secondaryYellow,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://cdn.idntimes.com/content-images/community/2019/07/20190719-220200-17405ba1f6dcd6ee662736e798df70f9_600x400.jpg'),
              ),
            ),
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                child: Container(
                  width: MediaQuery.of(context).size.width - 18,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  padding: const EdgeInsets.all(9),
                  child: Column(
                    children: const [
                      Text(
                        'X-2 RPL',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w700,
                          shadows: [
                            Shadow(
                              color: AppColorTheme.secondaryYellow,
                              offset: Offset(2, 2),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Text(
                          'Kelas yang seru dan teman-teman yang baik pula, serta jadi supporter utama buat ngeraih cita cita :)',
                          style: TextStyle(
                            fontFamily: 'inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Row(
                    children: const [
                      Text(
                        'Wali Kelas',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                    left: 20,
                    right: 20,
                  ),
                  child: Row(
                    children: const [
                      Text(
                        'Hin Nur Waisyah, S.Kom',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const RuangKelasInfo(),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                    left: 20,
                    right: 20,
                  ),
                  child: Row(
                    children: const [
                      Text(
                        'Teman Kelas',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 25,
                  itemBuilder: (context, index) {
                    return const TemanKelasItem();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TemanKelasItem extends StatelessWidget {
  const TemanKelasItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("data"),
          ),
        );
      },
      child: Container(
        decoration: const BoxDecoration(
          color: AppColorTheme.primaryExtraSoft,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  height: 65,
                  width: 65,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                    color: AppColorTheme.primaryExtraSoft,
                  ),
                ),
                Container(
                    width: 65,
                    height: 65,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://i1.sndcdn.com/artworks-000536544906-7kmmik-t500x500.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    )),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Karina Amelia',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '100001',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
