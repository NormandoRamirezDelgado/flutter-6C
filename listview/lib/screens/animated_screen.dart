import 'dart:math' show Random;

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 100;
  double _height = 100;
  Color _color = Colors.red;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);

  void changeShape(){
    
    final random = Random();
    _width = random.nextInt(300).toDouble() + 50;
    _height = random.nextInt(300).toDouble() + 50;
    _color = Color.fromRGBO(
      random.nextInt(255), 
      random.nextInt(255), 
      random.nextInt(255), 
      1
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
         child: AnimatedContainer(
          duration: Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
         )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.play_circle_outline, 
          size: 45, 
          color: Colors.white 
        ),
        onPressed: () {
          changeShape();
        },
      ),
    );
  }
}