import 'package:flutter/material.dart';
import 'package:frontend_system/core/configs/theme/app_theme.dart';
import 'package:frontend_system/core/constants/constants.dart';
import 'package:frontend_system/futures/auth/pages/sign_in_page.dart';
import 'package:frontend_system/futures/home/pages/home_page.dart';
import 'package:window_size/window_size.dart' show setWindowMinSize;
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
  setWindowMinSize(
      Size(Constants.window_initiate_width, Constants.window_initiate_height));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '客户关系管理系统',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('zh'),
      ],
      locale: Locale('zh'),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightThemeData,
      themeMode: ThemeMode.light,
      home: const HomePage(),
    );
  }
}
