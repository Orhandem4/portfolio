import 'package:flutter/material.dart';
import 'package:portfolio/widgets/appbar/my_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyAppBar(),
    );
  }
}