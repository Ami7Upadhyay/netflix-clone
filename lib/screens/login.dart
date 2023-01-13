import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/component/netflix_app_bar.dart';
import 'package:netflix_clone/model/pager_model_response.dart';

class Login extends StatefulWidget {
  static const path = '/login';
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  PageController _pageController = PageController();
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Theme.of(context).primaryColor,
          child: Stack(
            children: [
              pageView(),
              _appBar(),
              Align(alignment: Alignment.bottomCenter, child: _pageIndicator())
            ],
          ),
        ),
      ),
    );
  }

  Widget _appBar() {
    return const NetFlixAppBar(
      trailing: [
        InkWell(
            child: Text(
          'Privacy',
          style: TextStyle(color: Colors.white, fontSize: 16),
        )),
        SizedBox(width: 10),
        InkWell(
            child: Text(
          'Sign In',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ))
      ],
    );
  }

  Widget _pageIndicator() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(pageModel.length, (index) {
        return Container(
          height: 10,
          width: 10,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: (index == selectedIndex) ? Colors.white : Colors.grey),
        );
      }),
    );
  }

  Widget pageView() {
    return PageView.builder(
        itemCount: pageModel.length,
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        itemBuilder: (context, index) {
          PagerModel pagerModel = pageModel[index];
          return PagerContent(
            title: pagerModel.title,
            subTitle: pagerModel.subTitle,
          );
        });
  }
}

class PagerContent extends StatelessWidget {
  final String title;
  final String subTitle;
  const PagerContent({Key? key, required this.title, required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: _content(),
      ),
    );
  }

  Widget _content() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [_title(), const SizedBox(height: 20), _subTitle()],
    );
  }

  Widget _title() {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
          color: Colors.white, fontSize: 32, fontWeight: FontWeight.w500),
    );
  }

  Widget _subTitle() {
    return Text(
      subTitle,
      textAlign: TextAlign.center,
      style: const TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
    );
  }
}
