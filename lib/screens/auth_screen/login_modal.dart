import 'package:flutter/material.dart';
import 'package:smedipfess/screens/components/custom_text_field.dart';
import 'package:smedipfess/constants/theme.dart';
import 'package:smedipfess/screens/home/home_sceen.dart';
import 'package:smedipfess/screens/home/screen_router.dart';

class LoginModal extends StatefulWidget {
  const LoginModal({Key? key}) : super(key: key);

  @override
  _LoginModalState createState() => _LoginModalState();
}

class _LoginModalState extends State<LoginModal> {
  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
          bottom: 30,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: const EdgeInsets.only(bottom: 20),
                height: 6,
                width: MediaQuery.of(context).size.width * 0.23,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(26),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 10.0,
                    bottom: 20.0,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Masuk yuk 🎉",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                CustomTextField(
                  title: "NIS / NISN",
                  hint: "Identitas kamu",
                ),
                CustomTextField(
                  title: "Password",
                  hint: "********",
                  obsecureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const ScreenRouter(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      primary: AppColorTheme.kPrimary,
                    ),
                    child: const Text(
                      'Masuk',
                      style: TextStyle(
                        fontFamily: 'inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: AppColorTheme.secondary,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ]);
  }
}
