import 'package:flutter/material.dart';
import 'package:flutter_ilk_proje/image_widgets.dart';
import 'package:flutter_ilk_proje/my_counter_page.dart';
void main() {
debugPrint("main methodu çalıştı");

runApp(MyApp());  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
debugPrint("myapp çalıştı");
    return  MaterialApp(
      theme:ThemeData(
        textTheme: TextTheme(headlineMedium: TextStyle(color: Colors.amber)),//bunu neden almıyo da
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple)//bunu alıyor?! yarım
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Örnekleri"),
      ),
        body:ImageOrnekleri(),
      ),
      );
  }
}


