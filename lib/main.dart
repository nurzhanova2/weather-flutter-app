// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:thirdass/pages/almaty_page.dart';
import 'package:thirdass/pages/home_page.dart';
import 'package:thirdass/pages/temperature_page.dart';
import 'package:thirdass/pages/weather_advice_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(), // Указываем MainPage как начальный экран
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App',
        style: TextStyle(
        fontFamily: 'PlayfairDisplay',  
        fontSize: 20, // Размер шрифта
        fontWeight: FontWeight.bold, // Жирный шрифт
       ),
        ),
        backgroundColor: Color.fromARGB(255, 237, 107, 183),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/pink_bg.jpg'), 
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WeatherAdvicePage()),
                  );
                },
                child: Text('Weather Advice', 
                style: TextStyle(
               fontFamily: 'PlayfairDisplay',  
                fontSize: 15, // Размер шрифта
                fontWeight: FontWeight.bold, // Жирный шрифт
                ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text('Weather in Astana',
                style: TextStyle(
               fontFamily: 'PlayfairDisplay',  
                fontSize: 15, // Размер шрифта
                fontWeight: FontWeight.bold, // Жирный шрифт
                ),),
              ),
              SizedBox(height: 20),
               ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AlmatyPage()),
                  );
                },
                child: Text('Weather in Almaty',
                style: TextStyle(
               fontFamily: 'PlayfairDisplay',  
                fontSize: 15, // Размер шрифта
                fontWeight: FontWeight.bold, // Жирный шрифт
                ),),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TemperatureConversionPage()),
                  );
                },
                child: Text('Temperaature Converter',
                style: TextStyle(
               fontFamily: 'PlayfairDisplay',  
                fontSize: 15, // Размер шрифта
                fontWeight: FontWeight.bold, // Жирный шрифт
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

