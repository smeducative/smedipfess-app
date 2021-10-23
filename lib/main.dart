import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smedipfess/constants/theme.dart';
import 'package:smedipfess/provider/auth_provider.dart';
import 'package:smedipfess/screens/home/home_sceen.dart';
import 'package:smedipfess/screens/welcome_screen/welcome_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Consumer(
          builder: (context, auth, child) {
            var a = AuthProvider().isLoggedIn;

            if (a == true) {
              return const HomeScreen();
            }

            return const WelcomeScreen();
          },
        ),
        theme: ThemeData(
          primaryColor: AppColorTheme.kPrimary,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'inter',
        ),
      ),
    ),
  );
}
