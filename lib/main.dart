import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_ilk_proje/ListciewLayoutProblemleri.dart';
import 'package:flutter_ilk_proje/lessons/section_18/custom_scroll_sliver.dart';
import 'package:flutter_ilk_proje/lessons/section_18/listview_kullanimi.dart';

void main() {
  runApp(MyApp());
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..userInteractions = true
    ..dismissOnTap = true;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.tealAccent),
          ),
        ),
        textTheme: TextTheme(
          headlineMedium: TextStyle(color: Colors.deepPurple),
        ),
        brightness: Brightness.dark,
      ),
      home: Scaffold(body: CollapseToolbarOrnek()),
      builder: EasyLoading.init(),
    );
  }
}
