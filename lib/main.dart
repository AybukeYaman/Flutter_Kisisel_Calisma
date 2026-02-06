import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  Container containerOlustur(String harf, Color renk){
return Container(
                  height:100,
                  width: 100,
                  color:renk,  
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text(harf,style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),)),
                  ),
                );
  }
  Expanded expandedOlustur(String harf, Color renk, EdgeInsets margin){
    return Expanded(
                     child: Container(
                     margin: margin,
                       width: 100,
                       color:renk,  
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                       child: Center(child: Text(harf,style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),)),
                     ),
                     ),
                   );

  }

  String _img1="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVWNsFZGItCx7laFc86zZq8dUIbSVvhdeRyg&s";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          theme: ThemeData(primaryColor: const Color.fromARGB(255, 204, 121, 57) ),
          home: Scaffold(

           backgroundColor: const Color.fromARGB(255, 234, 233, 220), 
           appBar: AppBar(
             title:Text('Flutter Dersleri', style: TextStyle(color:Colors.white ,fontSize: 32)),
            backgroundColor: const Color.fromARGB(255, 57, 166, 238),
           ),  
           
           body:Container(
               child:yatayColumn(),   
             ),

        
           floatingActionButton: FloatingActionButton(
               onPressed: (){
                 debugPrint('Tıklandı');
               },//BU CALLBACK FONKSİYON
               backgroundColor: const Color.fromARGB(255, 235, 172, 168),
               child: Icon(
                Icons.access_alarm_rounded,
                 color: Colors.green,
                 ),
           ),
        ),
    );
  }

  Column yatayColumn() {
    return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children:<Widget>[
                   Align(
                    alignment:AlignmentGeometry.topCenter,
                    child: dikeyDartRow()
                   ), 
                   expandedOlustur("E", Colors.orange.shade300, EdgeInsets.fromLTRB(0,10,0,10)),
                   expandedOlustur("R", Colors.orange.shade400, EdgeInsets.fromLTRB(0,10,0,10)),
                   expandedOlustur("S", Colors.orange.shade500, EdgeInsets.fromLTRB(0,10,0,10)),
                   expandedOlustur("L", Colors.orange.shade600, EdgeInsets.fromLTRB(0,10,0,10)),
                   expandedOlustur("E", Colors.orange.shade700, EdgeInsets.fromLTRB(0,10,0,10)),
                   expandedOlustur("R", Colors.orange.shade800, EdgeInsets.fromLTRB(0,10,0,10)),
                   expandedOlustur("İ", Colors.orange.shade900, EdgeInsets.fromLTRB(0,10,0,0)),
              ],     
             );
  }

  Row dikeyDartRow() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children:<Widget> [
              
                containerOlustur("D", Colors.orange.shade200),
                containerOlustur("A", Colors.orange.shade300),
                containerOlustur("R", Colors.orange.shade400),
                containerOlustur("T", Colors.orange.shade500),
              ],
            );
  }

  List<Widget> get sorunluContainer {
    return [
              Container(
                width: 75,
                height: 75,
                color: Colors.yellow,
              ),
              Container(
                width: 75,
                height: 75,
                color: Colors.red,
              ),
              Container(
                width: 75,
                height: 75,
                color: Colors.blue,
              ),
              Container(
                width: 75,
                height: 75,
                color: Colors.orange,
              ),
              Container(
                width: 75,
                height: 75,
                color: Colors.purple,
              ),
              Container(
                width: 75,
                height: 75,
                color: Colors.pink,
              ),
            ];
  }

List<Widget> get flexableContainer {
    return [
         Flexible(
           child: Container(
                    width: 200,
                    height: 300,
                    color: Colors.yellow,
                  ),
         ),
        Flexible(
          child: Container(
                    width: 200,
                    height: 300,
                    color: Colors.red,
                  ),
        ),
            ];
  }


 List<Widget> get expandedContainer {
    return [
      
              Expanded(
                flex: 2,// sarı kutu diğerlerinin 2 katı yer  kaplar
                child: Container(
                  width: 75,
                  height: 75,
                  color: Colors.yellow,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: 75,
                  height: 75,
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex:3,//default 1 dir bu. oransal
                child: Container(
                  width: 75,
                  height: 75,
                  color: Colors.blue,
                ),
              ),
              
            ];
  }

  Container RowColumn() {
    return Container(
          color:Colors.red.shade500,
        
          child: Column(//Row
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch, 
            children:<Widget>[
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                Text("A"),
                Text("y"),
                Text("b"),
                Text("k"),

              ],
              ),
            Icon(
              Icons.add_circle,
              size:64,
              color:Colors.amber,
              ),
              Icon(
              Icons.add_circle,
              size:64,
              color:Colors.green,
              ),
              Icon(
              Icons.add_circle,
              size:64,
              color:Colors.orange,
              ),
              Icon(
              Icons.add_circle,
              size:64,
              color:Colors.blue,
              ),
          ]),
         );
  }

  Center containerDersleri() {
    return Center(
          child: Container(
            padding:EdgeInsets.all(100),
           child: Text(
            "Aybüke",
            style:TextStyle(fontSize: 20),
          ),
            decoration:BoxDecoration(
             color: Colors.orange,
             shape:BoxShape.rectangle, 
             border:Border.all(
              width: 10,color:Colors.purple
             ),
             borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), 
              bottomRight: Radius.elliptical(5, 25)
              ),
              image:DecorationImage(
                image:NetworkImage(_img1),
                  fit:BoxFit.scaleDown,
               repeat: ImageRepeat.repeat),
               boxShadow: [
                BoxShadow(
                          color: Colors.green, 
                         offset: Offset(10,20), 
                     blurRadius:10),
                BoxShadow(
                          color:Colors.limeAccent,  
                         offset:Offset(0, -20), 
                     blurRadius: 10 
                     ),
               ],
            ),
            
         ),
         );
  }
}
