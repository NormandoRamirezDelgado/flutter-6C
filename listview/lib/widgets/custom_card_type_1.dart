import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album_outlined, color: Colors.amber,),
            title: Text('Soy un Título'),
            subtitle: Text('Aute aute aliquip incididunt sunt laborum. Esse excepteur dolore sunt do commodo proident incididunt mollit irure occaecat cupidatat.'),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {}, 
                  child: Text('Ok')
              ),
                TextButton(
                  onPressed: () {}, 
                  child: Text('Cancelar'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}