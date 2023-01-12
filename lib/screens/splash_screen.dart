import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/component/netflix_custom_loader.dart';
import 'package:netflix_clone/extension/extenstion.dart';

class NetflixSplashScreen extends StatefulWidget {
  const NetflixSplashScreen({Key? key}) : super(key: key);

  @override
  State<NetflixSplashScreen> createState() => _NetflixSplashScreenState();
}

class _NetflixSplashScreenState extends State<NetflixSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        alignment: Alignment.center,
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset("netflix_logo_workmark".toPng),
            ),
            const SizedBox(height: 30),
            const NetflixLoader()
          ],
        ),
      ),
    );
  }
}
