import 'package:flutter/material.dart';

class _GridViewOrnek extends StatefulWidget {
  const _GridViewOrnek({super.key});

  @override
  State<_GridViewOrnek> createState() => __GridViewOrnekState();
}

class __GridViewOrnekState extends State<_GridViewOrnek> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: GridView.builder(
        itemCount: 100,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.teal[100 * ((index + 1) % 8)],
            child: Text("SLM FLTTR ${index + 1}", textAlign: TextAlign.center),
          );
        },
      ),
    );
  }
}

/* GridView.builder(
      itemCount: 100,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          alignment: Alignment.center,
          color: Colors.teal[100 * ((index + 1) % 8)],
          child: Text("SLM FLTTR ${index + 1}", textAlign: TextAlign.center),
        );
      },
    ); */
/* GridView.extent(
      maxCrossAxisExtent: 20, //tek satırda  kaç eleman olacak değeri bu,
      //kaydırılabilir bir ekran
      primary: true,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("SLM FLTTR", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("SLM FLTTR", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("SLM FLTTR", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("SLM FLTTR", textAlign: TextAlign.center),
        ),
      ],
    ); */
