import 'package:flutter/material.dart';

class Listciewlayoutproblemleri extends StatefulWidget {
  const Listciewlayoutproblemleri({super.key});

  @override
  State<Listciewlayoutproblemleri> createState() =>
      _ListciewlayoutproblemleriState();
}

class _ListciewlayoutproblemleriState extends State<Listciewlayoutproblemleri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview Problems")),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 4, color: Colors.cyanAccent),
        ),
        child: Column(
          children: [
            Text("başlado"),
            Expanded(
              child: ListView(
                //shrinkWrap:true ,//listwiev içindeki çocukların height kadar yer kaplar
                //false ise parentı kadar yer kaplar burada Conrainer
                scrollDirection: Axis.vertical,
                children: [
                  Container(width: 200, color: Colors.red),
                  Container(width: 200, color: Colors.red.shade100),
                  Container(width: 200, color: Colors.red.shade200),
                ],
              ),
            ),
            Text("bitti"),
          ],
        ),
      ),
    );
  }
}
