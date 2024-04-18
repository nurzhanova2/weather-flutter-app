// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class WeatherAdvicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Weather Advice',
          style: TextStyle(
            fontFamily: 'PlayfairDisplay',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 237, 107, 183),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/flowers.jpeg'), // Путь к вашему фоновому изображению
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              WeatherAdviceCard(
                condition: 'Warm and Sunny (Hot)',
                advice: [
                  'Wear light, breathable clothing made of natural fabrics like cotton or linen.',
                  'Use a hat or cap for sun protection.',
                  'Wear sunglasses.',
                  'Opt for flat-soled shoes for comfort.',
                ],
              ),
              WeatherAdviceCard(
                condition: 'Warm and Rainy',
                advice: [
                  'Choose a windbreaker or raincoat.',
                  'Wear waterproof boots or shoes.',
                  'Carry an umbrella.',
                  'Wear trousers or a skirt made of quick-drying material.',
                ],
              ),
              WeatherAdviceCard(
                condition: 'Cold and Sunny',
                advice: [
                  'Wear a warm jacket or coat.',
                  'Don a scarf and gloves.',
                  'Use insulated footwear.',
                  'Dress in clothing made of warm materials like wool or fleece.',
                ],
              ),
              WeatherAdviceCard(
                condition: 'Cold and Rainy',
                advice: [
                  'Wear a rain jacket or coat with a hood.',
                  'Opt for waterproof boots or shoes.',
                  'Carry an umbrella.',
                  'Use insulated trousers and a jacket.',
                ],
              ),
              WeatherAdviceCard(
                condition: 'Very Cold and Snowy',
                advice: [
                  'Wear a warm coat with an insulated lining.',
                  'Use waterproof boots with good traction.',
                  'Don a hat, scarf, and gloves.',
                  'Wear insulated trousers or leggings under pants.',
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WeatherAdviceCard extends StatelessWidget {
  final String condition;
  final List<String> advice;

  WeatherAdviceCard({required this.condition, required this.advice});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              condition,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'PlayfairDisplay',
              ),
            ),
            SizedBox(height: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: advice
                  .map((adviceText) => Text(
                        '• $adviceText',
                        style: TextStyle(fontSize: 16.0),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
