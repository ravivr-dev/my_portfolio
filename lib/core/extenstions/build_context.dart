import 'package:flutter/cupertino.dart';

extension OnBuildContext on BuildContext {
  double getScreenHeight() {
    return MediaQuery.of(this).size.height;
  }

  double getScreenWidth() {
    return MediaQuery.of(this).size.width;
  }



}
