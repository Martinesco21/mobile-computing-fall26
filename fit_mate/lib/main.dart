import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fit Mate'),
          backgroundColor: Colors.green,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome back', style: TextStyle(fontSize: 16)),
                  Text(
                    'Fit Mate',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _card('Workouts'),
                  _card('Nutrition'),
                  _card('Progress'),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      [
                        'Daily Workout',
                        'Nutrition Goals',
                        'Track Progress',
                        'Fitness Advice',
                        'Ask Fit Mate AI'
                      ][index],
                    ),
                    subtitle: Text(
                      [
                        'Stay active and build strength.',
                        'Track your daily nutrition goals.',
                        'Keep track of your fitness progress.',
                        'Get advice for your fitness goals.',
                        'Ask questions and get fitness guidance.'
                      ][index],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _card(String label) {
  return Container(
    width: 120,
    margin: const EdgeInsets.all(8),
    color: Colors.green.shade50,
    child: Center(child: Text(label)),
  );
}