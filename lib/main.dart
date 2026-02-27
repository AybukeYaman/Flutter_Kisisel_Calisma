import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ilk_proje/lessons/section_19/red_page.dart';
import 'package:flutter_ilk_proje/lessons/section_19/yellow_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: AnaSayfa(),
      //rota tanımı yapıldı
      routes: {
        "/RedPage": (context) => RedPage(),
        // "/": (context) => AnaSayfa(),
        "/YellowPage": (context) => YellowPage(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(title: Text("Error")),
          body: Center(child: Text("404")),
        ),
      ),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation İslemleri")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                int? _gelenSayi = await Navigator.push<int>(
                  context,
                  CupertinoPageRoute(builder: (redContext) => RedPage()),
                );
                //tanim ile olan kullanimi
                print("Ana sayfadaki Sayi $_gelenSayi");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade300,
              ),
              child: Text("Kırmızı Sayfaya Gir IOS"),
            ),

            ElevatedButton(
              onPressed: () {
                //both are the same thing
                //  Navigator.push(context, route);
                //Buradaki context build in içindeki context
                Navigator.of(context)
                    .push<int>(
                      MaterialPageRoute(
                        builder: (redContext) => RedPage(),
                        //buradaki context RedPage için eklenen context
                      ),
                    )
                    .then((int? value) => debugPrint("Gelen sayi $value"));
                //then ile kullanimi
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade600,
              ),
              child: Text("Maybe pop Kullanımı"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/RedPage2");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade300,
              ),
              child: Text("Pushnamed kullanimi"),
            ),
          ],
        ),
      ),
    );
  }
}
