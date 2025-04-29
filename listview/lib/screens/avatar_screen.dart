import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatars'),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text('SL'),
            ),
          )
        ],
      ),
      body: Center(
         child: CircleAvatar(
          maxRadius: 150,
          backgroundImage: NetworkImage('https://i.blogs.es/85aa44/stan-lee/840_560.jpg'),
         )
      ),
    );
  }
}