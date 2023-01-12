import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NetflixLoader extends StatelessWidget {
  const NetflixLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: Theme.of(context).primaryColor,
      strokeWidth: 5,
    );
  }
}
