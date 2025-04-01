import 'package:flutter/material.dart';
import 'package:listview/screens/screens.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[100],
        title: Text('Home Screen')
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.access_time_rounded),
          title: Text('Nombre de Ruta'),
          onTap: () {
            //Navdegación a otra pantalla
            // final route = MaterialPageRoute(
            //   builder: (context) => ListView1Screen()
            // );

            // Navigator.push(context, route);
            // Navigator.pushReplacement(context, route);

            Navigator.pushNamed(context, 'listview2');
          },
        ), 
        separatorBuilder: (context, index) => Divider(), 
        itemCount: 10,
        
      ),
    );
  }
}