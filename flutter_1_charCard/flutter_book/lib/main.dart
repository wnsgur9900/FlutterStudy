import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Character());
  }
}

class Character extends StatelessWidget {
  const Character({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        backgroundColor: Colors.amber[700],
        title: const Text(
          'BBANTO ID CARD',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/ch1.png',
                width: 220,
                height: 150,
              ),
            ),
            const Divider(
              height: 40,
              color: Colors.grey,
              thickness: 1,
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'BBANTO',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'BBANTO POWER LEVEL',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              '10',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Using lightsaber',
                  style: TextStyle(fontSize: 16, letterSpacing: 1.0),
                ),
              ],
            ),
            const Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Hero face tattoo',
                  style: TextStyle(fontSize: 16, letterSpacing: 1.0),
                ),
              ],
            ),
            const Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Fire flames',
                  style: TextStyle(fontSize: 16, letterSpacing: 1.0),
                ),
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: const AssetImage('assets/images/ch2.png'),
                backgroundColor: Colors.amber[500],
                radius: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
