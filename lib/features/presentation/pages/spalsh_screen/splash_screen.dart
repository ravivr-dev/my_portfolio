import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:my_portfolio/core/config/navigation.dart';
import 'package:my_portfolio/core/utils/app_colors.dart';
import 'package:my_portfolio/core/utils/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: LoadingAnimationWidget.staggeredDotsWave(
          color: Theme.of(context).colorScheme.error,
          size: 200,
        ),
      ),
    );
  }
}
