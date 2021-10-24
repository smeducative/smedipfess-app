import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smedipfess/constants/theme.dart';

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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: AppColorTheme.secondaryYellow,
          child: Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height * 0.22,
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 35),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 120,
                        decoration: BoxDecoration(
                          color: AppColorTheme.secondaryYellow,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 20,
                              offset: const Offset(0, 4),
                            ),
                          ],
                          gradient: LinearGradient(
                            colors: [
                              AppColorTheme.secondaryYellow,
                              AppColorTheme.secondaryYellow.withOpacity(0.8),
                              AppColorTheme.secondaryYellow.withOpacity(0.5),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
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
                              'Teman kelas',
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ListView(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        children: const [
                          TemanKelasItem(),
                          TemanKelasItem(),
                          TemanKelasItem(),
                          TemanKelasItem(),
                          TemanKelasItem(),
                          TemanKelasItem(),
                          TemanKelasItem(),
                          TemanKelasItem(),
                          TemanKelasItem(),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
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
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
                        Radius.circular(100),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://picsum.photos/seed/picsum/200/300'),
                        fit: BoxFit.cover,
                      ),
                    )),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Arista Oktaviani',
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
