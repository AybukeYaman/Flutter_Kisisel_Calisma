import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});

  @override
  Widget build(BuildContext context) {
    String _imgURL =
        "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?w=400";
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IntrinsicHeight(
            //pahalı bu!
            child: Row(
              //y ekseninde en yüksek resmin kadar bütü
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.pink,
                    child: Image.asset(
                      "assets/images/FlutterBacilari.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(child: Container(color: Colors.pink)),
                Expanded(
                  child: Container(
                    color: Colors.pink,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        //backgroundImage: NetworkImage(url), bura benden ImageProvider bekliyor WİDGET DEĞİL
                        backgroundColor: const Color.fromARGB(255, 7, 28, 255),
                        foregroundColor: const Color.fromARGB(255, 29, 169, 21),
                        child: Text(
                          "Aybüke",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: FadeInImage.assetNetwork(
              fit: BoxFit.contain,
              placeholder: "assets/images/loading.gif",
              image: _imgURL,
            ),
          ), //resim gelmeden önce ne gelsin
          Expanded(
            child: Placeholder(color: Colors.blue),
          ), //kodlama için resim tanımlama yeri
        ],
      ),
    );
  }
}
