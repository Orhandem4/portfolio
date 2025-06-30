import 'package:flutter/material.dart';

abstract class  AppInsets{
  double get Padding;
  double get appBarHeight;
}

class LargeInsets extends AppInsets{
  @override
  double get Padding => 80;
  
  @override
  double get appBarHeight => 64;
}

class SmallInsets extends AppInsets {
  @override
  double get Padding => 16;
  
  @override
  double get appBarHeight => 56;

}