import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    TextStyle fontSize30 = TextStyle(fontSize: 30);
    int counter = 10;

    return Scaffold(
      //backgroundColor: Color.fromARGB(198, 52, 29, 231),
      appBar: AppBar(
        title: Text('Home Screen'),
        backgroundColor: const Color.fromARGB(255, 232, 195, 238),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Clicks Counter',style: fontSize30),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //print('Hola Mundo!!');
          counter++;
          //print(counter);
        },
      ), 
    );
  }
  
}