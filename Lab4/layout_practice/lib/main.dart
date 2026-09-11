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
          title: const Text('Layout Practice'),
          backgroundColor: Colors.deepPurple,
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
                    'My App',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [_card('Item 1'), _card('Item 2'), _card('Item 3')],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Item ${index + 1}'),
                    subtitle: const Text('Description goes here'),
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
    color: Colors.deepPurple.shade50,
    child: Center(child: Text(label)),
  );
}
