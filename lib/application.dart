import 'package:flutter/material.dart';
import 'package:flutter_app_for_travel/bindings.dart';
import 'package:flutter_app_for_travel/core/router/router.dart';
import 'package:flutter_app_for_travel/feature/presentation/screens/about/about_screen.dart';
import 'package:flutter_app_for_travel/feature/presentation/screens/home/home_screen.dart';
import 'package:flutter_app_for_travel/feature/presentation/screens/splash/splash_screen.dart';
import 'package:get/get.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Travel App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        initialBinding: AppBindings(),
        initialRoute: AppRouter.splash,
        getPages: [
          GetPage(name: AppRouter.splash, page: () => const SplashScreen()),
          GetPage(name: AppRouter.home, page: () => const HomeScreen()),
          GetPage(name: AppRouter.about, page: () => const AboutScreen()),
        ]);
  }
}
