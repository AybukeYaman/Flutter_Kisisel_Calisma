
import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Column(children: [
        
          Container(
            color: Colors.pink,
            width: 150,
            height:150,
            child: Image.asset(
              "assets/images/FlutterBacilari.png",
              fit:BoxFit.cover,
              )
            ),
            Container(
            color: Colors.pink,
            width: 150,
            height:150,
            ),
            Container(
            color: Colors.pink,
              child: CircleAvatar(
                child: Text(
                  "Aybüke",
                   style: Theme.of(context).textTheme.bodyLarge
                ),
               //backgroundImage: NetworkImage(url), bura benden ImageProvider bekliyor WİDGET DEĞİL
                backgroundColor: Colors.amber,
                foregroundColor: Colors.red,
                radius: 30,
              ),
              ),
          
      ],),
    );
  }
}