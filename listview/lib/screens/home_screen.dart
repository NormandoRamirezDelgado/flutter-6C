import 'package:flutter/material.dart';
import 'package:listview/router/app_routes.dart';
import 'package:listview/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      //Crear una referencia a Scaffold que tiene el drawer
      key: scaffoldKey,
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
            Navigator.pushNamed(context, menuOptions[index].route);
          },
        ), 
        separatorBuilder: (context, index) => Divider(), 
      ),
      drawer: SideMenu(scaffoldKey: scaffoldKey),
    );
  }
}