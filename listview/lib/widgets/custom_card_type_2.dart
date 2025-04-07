import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String? name;

  const CustomCardType2({
    super.key, 
    required this.imageUrl, 
    this.name
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      elevation: 10,
      shadowColor: const Color.fromARGB(255, 103, 243, 33),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl), 
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
            placeholder: AssetImage('assets/loading.gif'),
          ),

          if (name != null)
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(name!)
            )

        ],
      ),
    );
  }
}