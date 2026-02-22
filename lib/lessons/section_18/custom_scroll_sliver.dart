import 'dart:math';
import 'dart:math' as math;

import 'package:flutter/material.dart';

class CollapseToolbarOrnek extends StatefulWidget {
  const CollapseToolbarOrnek({super.key});

  @override
  State<CollapseToolbarOrnek> createState() => _CollapseToolbarOrnekState();
}

class _CollapseToolbarOrnekState extends State<CollapseToolbarOrnek> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          //backgroundColor: Colors.red,
          expandedHeight: 250,
          floating: true,
          pinned: false,
          snap: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Sliver Appbar"),
            centerTitle: true,
            background: Image.asset(
              "assets/images/FlutterBacilari.png",
              fit: BoxFit.contain,
            ),
          ),
        ),

        SliverList(
          delegate: SliverChildBuilderDelegate(
            _dinamikElemanUretenFonksiyon,
            childCount: 10,
          ),
        ),

        //sabit elemanlı tek satırda 2 li
        SliverGrid(
          delegate: SliverChildListDelegate(sabitListElemanlari),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
        ),

        //dinamik elemanlı tek satırda 3 lü
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            _dinamikElemanUretenFonksiyon,
            childCount: 15,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
        ),

        //tek stırdaki bir elemanın max genişliğini söylediğimiz grid
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            _dinamikElemanUretenFonksiyon,
            childCount: 10,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 10, //tek satıra 10 tane sığıyor demek
          ),
        ),

        SliverGrid.count(crossAxisCount: 6, children: sabitListElemanlari),

        SliverGrid.extent(
          maxCrossAxisExtent: 100,
          children: sabitListElemanlari,
        ),

        //bu daha performanslı çalışır
        SliverPadding(
          padding: EdgeInsets.all(16),
          sliver: SliverFixedExtentList(
            delegate: SliverChildListDelegate(sabitListElemanlari),
            itemExtent: 300, //pixel boyutu
          ),
        ),

        //daha performanslı
        SliverPadding(
          padding: EdgeInsets.all(16),
          sliver: SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(
              _dinamikElemanUretenFonksiyon,
              childCount: 15,
            ),
            itemExtent: 15,
          ),
        ),

        SliverPadding(
          padding: EdgeInsets.all(100),
          sliver: SliverList(
            delegate: SliverChildListDelegate(sabitListElemanlari),
          ),
        ),
      ],
    );
  }

  List<Widget> get sabitListElemanlari {
    return [
      Container(
        height: 100,
        color: Colors.amber,
        alignment: Alignment.center,
        child: Text(
          "sabit liste elemani 1",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.green,
        alignment: Alignment.center,
        child: Text(
          "sabit liste elemani 1",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.teal,
        alignment: Alignment.center,
        child: Text(
          "sabit liste elemani 1",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.purple,
        alignment: Alignment.center,
        child: Text(
          "sabit liste elemani 1",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.orange,
        alignment: Alignment.center,
        child: Text(
          "sabit liste elemani 1",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.amber,
        alignment: Alignment.center,
        child: Text(
          "sabit liste elemani 1",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }

  Widget _dinamikElemanUretenFonksiyon(BuildContext context, int index) {
    return Container(
      height: 100,
      color: _rastgeleRenkUret(),
      alignment: Alignment.center,
      child: Text(
        "dinamik liste elemani ${index + 1}",
        style: TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }

  Color? _rastgeleRenkUret() {
    return Color.fromARGB(
      math.Random().nextInt(256),
      math.Random().nextInt(256),
      math.Random().nextInt(256),
      math.Random().nextInt(256),
    );
  }
}
