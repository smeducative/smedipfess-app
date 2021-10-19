import 'package:flutter/material.dart';
import 'package:smedipfess/constants/theme.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: AppColorTheme.primarySoft,
            ),
          ),
          const Positioned(
            height: 200,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Image(
                  image: AssetImage('assets/images/sample-3.png'),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.77,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 48.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Smedipfess",
                            style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: 34,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Where you confess through network",
                            style: TextStyle(
                                fontFamily: 'inter',
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('yep'),
                            ),
                          );
                        },
                        child: const Text(
                          "Memulai",
                          style: TextStyle(
                            fontFamily: 'inter',
                            fontWeight: FontWeight.w400,
                            color: AppColorTheme.secondary,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          primary: AppColorTheme.kPrimary,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
