import 'package:flutter/material.dart';
import 'package:flutter_ilk_proje/dropdown_button_kullanimi.dart';
import 'package:flutter_ilk_proje/image_widgets.dart';
import 'package:flutter_ilk_proje/my_counter_page.dart';
import 'package:flutter_ilk_proje/popupmenu_kullanimi.dart';
import 'package:flutter_ilk_proje/temel_buton_turleri.dart';

void main() {
  runApp(MyApp());
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
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Butonlar"),
          backgroundColor: Colors.amberAccent,
          centerTitle: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
            ),
          ),
          actions: [PopupmenuKullanimi()],
        ),
        body: PopupmenuKullanimi(),
      ),
    );
  }
}
