import 'package:flutter/material.dart';
import 'package:lojaflutter/tabs/home_tab.dart';
import 'package:lojaflutter/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        )
      ],
    );
  }
}
