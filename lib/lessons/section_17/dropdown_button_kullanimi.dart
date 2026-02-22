import 'package:flutter/material.dart';

class DropdownKullanimi extends StatefulWidget {
  const DropdownKullanimi({super.key});

  @override
  State<DropdownKullanimi> createState() => _DropdownKullanimiState();
}

class _DropdownKullanimiState extends State<DropdownKullanimi> {
  String? _secilenSehir = null;
  List<String> _tumSehirler = ["Ankara", "Bolu", "Izmir", "Adıyaman"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text("Şehir seçiniz"),
        icon: Icon(Icons.arrow_downward),
        style: TextStyle(color: Colors.red, fontSize: 24),
        iconSize: 32,
        underline: Container(height: 4, color: Colors.purple),
        /*  items: [
          DropdownMenuItem(value: "Ankara", child: Text("Ankara Şehri")),
          DropdownMenuItem(value: "İstanbul", child: Text("İstanbul Şehri")),
          DropdownMenuItem(value: "Bolu", child: Text("Bolu Şehri")),
        ], */

        //.map bize bir iterable verir
        items: _tumSehirler
            .map(
              (String oankiSehir) =>
                  DropdownMenuItem(value: oankiSehir, child: Text(oankiSehir)),
            )
            .toList(),
        value: _secilenSehir,
        onChanged: (String? yeni) {
          setState(() {
            debugPrint("Çalıştı $yeni");
            _secilenSehir = yeni;
          });
        },
      ),
    );
  }
}
