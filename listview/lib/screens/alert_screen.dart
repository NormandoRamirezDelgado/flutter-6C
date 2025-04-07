import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  void despliegaDialogo(BuildContext context){

    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return AlertDialog(
          title: Text('Título'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la Alerta'),
              SizedBox(height: 20,),
              FlutterLogo(size: 200,),
              
            ],
          ),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: Text('Cancelar'),
            )
          ],
        );
      }
    );

  }

  const AlertScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => despliegaDialogo(context), 
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('¡Mostrar Alerta!', style: TextStyle(fontSize: 30),),
          )
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: Icon(Icons.close),
      ),
    );
  }
}