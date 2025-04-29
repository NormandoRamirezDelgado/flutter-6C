import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [

              TextFormField(
                autofocus: true,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {
                  print('Valor: $value');
                },
                validator: (value) {
                  if (value == null) return 'Este campo es requerido';
                  return value.length < 3 ? 'Mínimo 3 caracteres' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                //Personalizar
                decoration: InputDecoration(
                  hintText: 'Nombre de Usuario',
                  labelText: 'Nombre',
                  helperText: 'Solo Letras'
                ),
              ),
              

            ],
          ),
        ),
      )
    );
  }
}