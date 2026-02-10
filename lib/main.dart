import 'package:flutter/material.dart';
import 'package:flutter_ilk_proje/image_widgets.dart';
import 'package:flutter_ilk_proje/my_counter_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green, primarySwatch: Colors.brown),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Örnekleri"),
          backgroundColor: Colors.amberAccent,
          centerTitle: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
            ),
          ),
        ),
        body: ImageOrnekleri(),
      ),
    );
  }
}
