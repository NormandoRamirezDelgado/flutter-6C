import 'package:flutter/material.dart';
import 'package:listview/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider & Checks'),
      ),
      body: Column(
        children: [
      
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            divisions: 10,
            value: _sliderValue, 
            onChanged: _sliderEnabled
            ? (value) {
              _sliderValue = value;
              setState(() {});
            }
            : null
          ),
      
          Checkbox(
            value: _sliderEnabled, 
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            },
          ),

          CheckboxListTile.adaptive(
            activeColor: AppTheme.primary,
            title: Text('Habilitar Slider'),
            value: _sliderEnabled, 
            onChanged: (value) => setState(() { _sliderEnabled = value ?? true;})
          ),

          Switch.adaptive(
            activeColor: AppTheme.primary,
            value: _sliderEnabled, 
            onChanged: (value) => setState(() {_sliderEnabled = value;}),
          ),

          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: Text('Habilitar Slider'),
            value: _sliderEnabled, 
            onChanged: (value) => setState(() { _sliderEnabled = value;})
          ),

          AboutListTile(),
      
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: NetworkImage('https://news.uoregon.edu/sites/default/files/styles/custom_xl/public/spiderman-mobile.jpg?itok=f2ii5Tq9'),
                  fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
      
        ],
      ),
    );
  }
}