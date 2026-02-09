import 'package:flutter/material.dart';

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
      title:"My CounterApp",
      theme:ThemeData(
      primarySwatch: Colors.pink,

      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
debugPrint("myHomePage çalıştı");
    return Container(
      child:Scaffold(
        appBar: AppBar(
          title: Text("BURA BENİM AppBARIM"),
       ),
       body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Butona basılma miktarı", style: TextStyle(fontSize: 32)),
            Text("0",style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          ],
        ),
       ),
       floatingActionButton: FloatingActionButton(onPressed: (){
        
debugPrint("buton çalıştı");
       },child: Icon(Icons.add_a_photo),),
      ),
    );
  }
}