import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({super.key});
  int _rastgeleSayi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Red Page"),
        backgroundColor: Colors.red,
        // automaticallyImplyLeading: false, //auto gelen back il-konu gider
      ),
      body: Center(
        child: Column(
          children: [
            Text("RedPage", style: TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: () {
                _rastgeleSayi = Random().nextInt(100);
                print("Üretilen sayi $_rastgeleSayi");
                Navigator.of(context).pop(_rastgeleSayi);
              },
              child: Text("Geri Dön ne olur Geri Dön"),
            ),
          ],
        ),
      ),
    );
  }
}
