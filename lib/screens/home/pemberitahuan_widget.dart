import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smedipfess/constants/theme.dart';

class PemberitahuanWidget extends StatelessWidget {
  const PemberitahuanWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Pemberitahuan',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'lihat semua',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: AppColorTheme.primarySoft,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ListView(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              children: const [
                PemberitahuanItem(
                  title: 'Contoh pertama yang akan tersedia ya',
                  date: '12/12/2020',
                ),
                PemberitahuanItem(
                  title: 'Contoh kedua',
                  date: '12/12/2020',
                ),
                PemberitahuanItem(
                  title: 'Contoh ketiga',
                  date: '12/12/2020',
                ),
                PemberitahuanItem(
                  title: 'Katanya naruto udah ngga itu ya',
                  date: '12/12/2020',
                ),
                PemberitahuanItem(
                  title: 'Lah ngga apa ? kasih tau dong',
                  date: '12/12/2020',
                ),
                PemberitahuanItem(
                  title: 'suka musik yang gimana kamu? boleh tau nggak',
                  date: '12/12/2020',
                ),
                PemberitahuanItem(
                  title: 'Akusih suka musik yang enak di denger doang',
                  date: '12/12/2020',
                ),
                PemberitahuanItem(
                  title:
                      'Kalo kamu yang gmana emangnya ? boleh aku tau nggak soalnya lagi nyari referesnis',
                  date: '12/12/2020',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PemberitahuanItem extends StatelessWidget {
  final String title;
  final String date;

  const PemberitahuanItem({
    Key? key,
    required this.title,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Stack(children: [
            Container(
              decoration: const BoxDecoration(
                color: AppColorTheme.primaryExtraSoft,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              height: 80,
              width: 120,
            ),
            const Image(
              image: AssetImage('assets/icons/temp_icon.png'),
              fit: BoxFit.cover,
              width: 120,
              height: 80,
            ),
          ]),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    softWrap: true,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      date,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
