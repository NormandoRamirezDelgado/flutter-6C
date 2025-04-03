import 'package:flutter/material.dart';
import 'package:listview/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.indigo[100],
        title: Text('Home Screen')
      ),
      body: ListView.separated(
        itemCount: menuOptions.length,
        itemBuilder: (context, index) => ListTile(
          leading: Icon(menuOptions[index].icon),
          title: Text(menuOptions[index].name),
          onTap: () {
            //Navegación a otra pantalla
            // final route = MaterialPageRoute(
            //   builder: (context) => ListView1Screen()
            // );

            // Navigator.push(context, route);
            // Navigator.pushReplacement(context, route);

            Navigator.pushNamed(context, menuOptions[index].route);
          },
        ), 
        separatorBuilder: (context, index) => Divider(), 
        
      ),
    );
  }
}