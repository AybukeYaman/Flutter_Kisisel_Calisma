import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

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
      appBar: AppBar(title: const Text("Öğrenci Listesi")),
      body:
          listViewBuilder(), // Burada hangi listeyi görmek istiyorsan onu çağırabilirsin.
    );
  }

  ListView classicListView() {
    return ListView(
      children: tumOgrenciler
          .map(
            (Ogrenci ogr) => ListTile(
              title: Text(ogr.sim),
              subtitle: Text(ogr.soyisim),
              leading: CircleAvatar(child: Text(ogr.id.toString())),
            ),
          )
          .toList(),
    );
  }

  // Dışarıda kalan builder yapısını bir metod haline getirdim:
  ListView listViewBuilder() {
    return ListView.builder(
      itemCount: tumOgrenciler.length,
      itemBuilder: (BuildContext context, int index) {
        var oAnkiOgrenci = tumOgrenciler[index];

        return Card(
          color: index % 2 == 0 ? Colors.pink.shade200 : Colors.green.shade200,
          child: ListTile(
            onTap: () {
              if (index % 2 == 0) {
                EasyLoading.instance.backgroundColor = Colors.red;
                EasyLoading.instance.textColor = Colors.pink;
              } else {
                EasyLoading.instance.backgroundColor = Colors.blue;
              }
              EasyLoading.showToast(
                "Eleman tıklandı",
                duration: const Duration(seconds: 3),
                dismissOnTap: true,
                toastPosition: EasyLoadingToastPosition.bottom,
              );
            },
            onLongPress: () {
              _alertDialogIslamleri(context, oAnkiOgrenci);
            },
            title: Text(oAnkiOgrenci.sim),
            subtitle: Text(oAnkiOgrenci.soyisim),
            leading: CircleAvatar(child: Text(oAnkiOgrenci.id.toString())),
          ),
        );
      },
    );
  }

  void _alertDialogIslamleri(BuildContext myContext, Ogrenci secilenOgr) {
    // İOS İÇİN showCupertinoDialog(context: context, builder: builder)
    showDialog(
      context: myContext,
      builder: (context) {
        return AlertDialog(
          title: Text(secilenOgr.toString()),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("Aybüke harika biri" * 200),
                Text("Aybüke harika biri" * 200),
                Text("Aybüke harika biri" * 200),
              ],
            ),
          ),
          actions: [
            OverflowBar(
              children: [
                TextButton(onPressed: () {}, child: Text("kapat")),
                TextButton(onPressed: () {}, child: Text("tamam")),
              ],
            ),
          ],
        );
      },
    );
  }
}

class Ogrenci {
  final int id;
  final String sim;
  final String soyisim;

  Ogrenci(this.id, this.sim, this.soyisim);

  @override
  String toString() => "İsim : ${sim} Soyisim: ${soyisim} ID : ${id}";
}
