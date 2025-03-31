import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

  final juegos = const[
    'Megaman', 
    'Metal Gear', 
    'Super Smash', 
    'Final Fantasy',
    'Free Fire',
    'Megaman', 
    'Metal Gear', 
    'Super Smash', 
    'Final Fantasy',
    'Free Fire',
    'Megaman', 
    'Metal Gear', 
    'Super Smash', 
    'Final Fantasy',
    'Free Fire',
  ];
   
  const ListView2Screen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('ListView Tipo 2'),
      ),
      body: ListView.separated(
        itemCount: juegos.length,
        itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.supervised_user_circle_outlined),
          title: Text(juegos[index]),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            print(juegos[index]);
          },
        ),
        separatorBuilder: (_, __) => Divider(), 
      )
    );
  }
}