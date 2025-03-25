import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 = TextStyle(fontSize: 15);
    return Scaffold(
      //backgroundColor: Color.fromARGB(198, 52, 29, 231),
      appBar: AppBar(
        title: Text('Counter Screen'),
        backgroundColor: const Color.fromARGB(255, 232, 195, 238),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have pushed the button this many times:',style: fontSize30),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          counter++;
          setState(() {});
        },
      ), 
    );
  }
}