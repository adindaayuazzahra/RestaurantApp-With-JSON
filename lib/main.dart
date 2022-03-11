import 'package:flutter/material.dart';
import 'package:restoran_sub1/splash_screen.dart';
import 'package:restoran_sub1/styles.dart';

void main() => runApp(RestoranApp());

class RestoranApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: primaryColor,
              secondary: secondaryColor,
            ),
        textTheme: myTextTheme,
      ),
      home: SplashScreen(),
    );
  }
}
