import 'package:flutter/material.dart';
import 'package:restoran_sub1/beranda.dart';
import 'package:restoran_sub1/styles.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Beranda()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(50),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: secondaryColor,
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.fastfood,
                    size: 100,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Are You Hungry?',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Let's eat together and find your favorite restaurant with us.",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.overline,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
