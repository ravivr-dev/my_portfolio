import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio/core/config/themes.dart';
import 'package:my_portfolio/core/utils/constants.dart';
import 'package:my_portfolio/features/presentation/pages/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

/// The route configuration.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: "/",
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Brightness systemTheme = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = systemTheme == Brightness.dark;
    return MaterialApp.router(
      title: Constants.appName,
      theme: isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
      locale: const Locale('en'),
      // localizationsDelegates: const [
      //   //MyLocalizationsDelegate(),
      // ],
      // builder: DevicePreview.appBuilder,
      supportedLocales: const [Locale('en')],
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
