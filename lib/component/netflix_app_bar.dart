import 'package:flutter/cupertino.dart';
import 'package:netflix_clone/extension/extenstion.dart';

class NetFlixAppBar extends StatelessWidget {
  final List<Widget> trailing;
  const NetFlixAppBar({Key? key, this.trailing = const []}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [_logo(), const Spacer(), _trailing()],
      ),
    );
  }

  Widget _logo() {
    return Image.asset(
      "netflix_logo_workmark".toPng,
      height: 22,
      width: 86,
    );
  }

  Widget _trailing() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: trailing,
    );
  }
}
