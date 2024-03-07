import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportedup/features/authentication/screen/onboarding/onboarding.dart';
import 'package:sportedup/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //It will get the theme of system
      themeMode: ThemeMode.system,
      //Light theme
      theme: TAppTheme.lightTheme,
      //Dark theme
      darkTheme: TAppTheme.darkTheme,
      home: OnBoardingScreen(),
    );
  }
}
