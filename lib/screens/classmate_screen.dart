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
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.28,
            decoration: const BoxDecoration(
              color: AppColorTheme.secondaryYellow,
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
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 120,
                    decoration: const BoxDecoration(
                        color: AppColorTheme.secondaryYellow,
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
                        ]),
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
                      'Sandy Purnomo Aji',
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
