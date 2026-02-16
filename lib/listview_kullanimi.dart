import 'package:flutter/material.dart';

class ListviewKullanimi extends StatefulWidget {
  const ListviewKullanimi({super.key});

  @override
  State<ListviewKullanimi> createState() => _ListviewKullanimiState();
}

class _ListviewKullanimiState extends State<ListviewKullanimi> {
  List<Ogrenci> tumOgrenciler = List.generate(
    5000,
    (index) => Ogrenci(
      index + 1,
      "Öğrenci adı ${index + 1}",
      "Ogrenci soyadı ${index + 1}",
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Öğrenci Listesi")),
      body: ListView.custom(childrenDelegate: childrenDelegate)....
    );
  }

  ListView classicListView() {
    return ListView(
      children: tumOgrenciler
          .map(
            (Ogrenci ogr) => ListTile(
              title: Text(ogr.isim),
              subtitle: Text(ogr.soyisim),
              leading: CircleAvatar(child: Text(ogr.id.toString())),
            ),
          )
          .toList(),
    );
  }
}


Widget _ogrenciListesiniOlustur() {
    return ListView.separated(
      itemCount: tumOgrenciler.length,
      itemBuilder: (BuildContext context, int index) {
        var oAnkiOgrenci = tumOgrenciler[index];

        return Card(
          color: index % 2 == 0
              ? Colors.pink.shade200
              : Colors.green.shade200,
          child: ListTile(
            onTap: () {
              print("eleman tıklandı: ${index + 1}");
            },
            title: Text(oAnkiOgrenci.isim),
            subtitle: Text(oAnkiOgrenci.soyisim),
            leading: CircleAvatar(
              child: Text(oAnkiOgrenci.id.toString()),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        // Her 4 elemanda bir çizgi çeker
        if ((index + 1) % 4 == 0) {
          return const Divider(thickness: 2, color: Colors.black);
        }
        return const SizedBox();
      },
    );
  }
class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
}
