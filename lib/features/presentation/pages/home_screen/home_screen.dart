import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:my_portfolio/core/extenstions/build_context.dart';
import 'package:my_portfolio/core/utils/app_colors.dart';
import 'package:my_portfolio/features/presentation/pages/components/contact_info_component_widget.dart';
import 'package:my_portfolio/features/presentation/pages/components/header_component_widget.dart';
import 'package:my_portfolio/features/presentation/pages/components/home_body_component_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _loaderNotifier = ValueNotifier<bool>(true);

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      /// Navigate User to home screen
      Future.delayed(
          const Duration(
            milliseconds: 3000,
          ), () {
        _loaderNotifier.value = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(.1),
      body: ValueListenableBuilder(
        valueListenable: _loaderNotifier,
        builder: (context, bool showLoader, child) {
          return showLoader
              ? Center(
                  child: LoadingAnimationWidget.staggeredDotsWave(
                    color: Theme.of(context).colorScheme.error,
                    size: 200,
                  ),
                )
              : _getMyPortfolioBody();
        },
      ),
    );
  }

  _getMyPortfolioBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _getHomePageWidget(),
          _getAboutSectionsWidget(),
        ],
      ),
    );
  }

  _getHomePageWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 120,
        vertical: 80,
      ),
      height: context.getScreenHeight(),
      width: context.getScreenWidth(),
      color: AppColors.primaryBaseColor,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeaderComponentWidget(),
          HomeBodyComponentWidget(),
          ContactInfoComponentWidget(),
        ],
      ),
    );
  }

  _getAboutSectionsWidget() {
    return Container(
      height: context.getScreenHeight(),
      width: context.getScreenWidth(),
      color: AppColors.primaryBaseColor,
    );
  }
}
