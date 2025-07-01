class Insets {
  static double get xs => 4;
  static double get med => 12;
  static const double maxWidth = 1280;
}

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