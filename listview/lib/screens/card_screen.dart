import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({super.key,});
  
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
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://iso.500px.com/wp-content/uploads/2023/01/By-Donghao-2.jpeg', name: 'Un Hermoso Paisaje'),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://rosshillart.com/cdn/shop/articles/R._Delino_Landscape_art_-_Rosshillart.com_1100x.jpg?v=1703181542',),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://cdn.prod.website-files.com/5d36cc33dbdba433e24e83ae/66cfbd9729ef6e5a4dddbc7f_aoraki-pastel-dawn-mt-cook-2.jpg', name: 'Otro Paisaje'),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://cdn.prod.website-files.com/5d36cc33dbdba433e24e83ae/66cfbd9729ef6e5a4dddbc7f_aoraki-pastel-dawn-mt-cook-2.jpg'),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJrSN9W2lI0xSPzW30KRC88S2kk5D-JCt52g&s', name: 'Paisaje'),

       

        ] 
      ),
    );
  }
}

