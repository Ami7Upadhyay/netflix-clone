import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:netflix_clone/component/netflix_custom_loader.dart';
import 'package:netflix_clone/extension/extenstion.dart';
import 'package:netflix_clone/screens/login.dart';

class NetflixSplashScreen extends StatefulWidget {
  const NetflixSplashScreen({Key? key}) : super(key: key);

  @override
  State<NetflixSplashScreen> createState() => _NetflixSplashScreenState();
}

class _NetflixSplashScreenState extends State<NetflixSplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    Future.delayed(const Duration(seconds: 1), () {
      GoRouter.of(context).go(Login.path);
      // context.goNamed('/login');
    });
    super.didChangeDependencies();
  }

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
