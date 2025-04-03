import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarjetas - Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 20, 
          vertical: 10
        ),
        children: [
          
          CustomCardType1(),
          CustomCardType1(),
          CustomCardType1(),
          CustomCardType1(),
          CustomCardType1(),

        ] 
      ),
    );
  }
}

