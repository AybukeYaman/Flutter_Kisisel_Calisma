import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          onLongPress: () {
            debugPrint("UzunBasıldı");
          },
          child: Text(
            "text buton",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          style: ButtonStyle(
            //backgroundColor: WidgetStatePropertyAll(Colors.red),
            //backgroundColor: WidgetStateProperty.fromMap(map)
          ),
          icon: Icon(Icons.add),
          label: Text("Text button with icon"),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.brown,
            foregroundColor: Colors.cyanAccent,
            overlayColor: Colors.pink,
          ),
          child: Text("Elevated Button"),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.access_alarm),
          label: Text("Elevated with icon"),
        ),
        OutlinedButton(onPressed: () {}, child: Text("Outline Button")),
        OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            shape: StadiumBorder(),
            side: BorderSide(color: Colors.lightGreen, width: 10),
          ),
          icon: Icon(Icons.access_alarm),
          label: Text("Elevated with icon"),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.red, width: 2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
            ),
          ),
          icon: Icon(Icons.access_alarm),
          label: Text("Elevated with icon"),
        ),
      ],
    );
  }
}
