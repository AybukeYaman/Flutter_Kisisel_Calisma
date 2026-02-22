import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({super.key});

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint("myHomePage çalıştı");
    return Scaffold(
      appBar: AppBar(title: Text("BURA BENİM AppBARIM")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyNewTextWidget(),
            Text(
              _sayac.toString(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("buton çalıştı ve sayac değeri $_sayac");
          sayaciArtir();
        },
        child: Icon(Icons.add_a_photo),
      ),
    );
  }

  void sayaciArtir() {
    //_MyHomePageState widgetinin buildini yeniden tetikler
    setState(() {
      _sayac++;
    });
  }
}

class MyNewTextWidget extends StatelessWidget {
  const MyNewTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Butona basılma miktarı", style: TextStyle(fontSize: 32));
  }
}
