// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

class TemperatureConversionPage extends StatefulWidget {
  @override
  _TemperatureConversionPageState createState() =>
      _TemperatureConversionPageState();
}

class _TemperatureConversionPageState extends State<TemperatureConversionPage> {
  double celsius = 0;
  double fahrenheit = 32; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Temperature Converter',
          style: TextStyle(
            fontFamily: 'PlayfairDisplay',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 237, 107, 183), 
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(211, 237, 107, 183),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), 
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter temperature in Celsius',
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      celsius = double.tryParse(value) ?? 0; 
                      fahrenheit = (celsius * 9 / 5) + 32; 
                    });
                  },
                ),
                SizedBox(height: 20.0),
                Text(
                  'Temperature in Fahrenheit:',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'PlayfairDisplay', 
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '$fahrenheit°F',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'PlayfairDisplay', 
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
