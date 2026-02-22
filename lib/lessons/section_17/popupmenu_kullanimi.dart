import 'package:flutter/material.dart';

class PopupmenuKullanimi extends StatefulWidget {
  const PopupmenuKullanimi({super.key});

  @override
  State<PopupmenuKullanimi> createState() => _PopupmenuKullanimiState();
}

class _PopupmenuKullanimiState extends State<PopupmenuKullanimi> {
  String _secilenSehir = "Ankara";
  List<String> renkler = ["mavi", "yeşil", "kırmızı"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String sehir) {
          setState(() {
            print("Seçilen şehir $sehir");
            _secilenSehir = sehir;
          });
        },
        itemBuilder: (BuildContext context) {
          /*return <PopupMenuEntry<String>>[
            PopupMenuItem(value: "Ankara", child: Text("Ankara")),
            PopupMenuItem(value: "isto", child: Text("isto")),
            PopupMenuItem(value: "bursa", child: Text("bursa")),
          ];
        }, */

          return renkler
              .map(
                (String renk) => PopupMenuItem(value: renk, child: Text(renk)),
              )
              .toList();
        },
      ),
    );
  }
}
