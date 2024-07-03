import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animal Sounds',
      theme: ThemeData(
        colorSchemeSeed: Colors.deepPurple,
      ),
      home: const AnimalSounds(),
    );
  }
}

class AnimalSounds extends StatelessWidget {
  const AnimalSounds({super.key});

  void playSound(String name) {
    final player = AudioPlayer();
    player.play(AssetSource('$name.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Animal Sounds'),
        centerTitle: true,
        leading: SizedBox(
          height: 50,
          width: 150,
          child: Lottie.asset('lib/lottie/cat.json'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          playSound('bear');
                        },
                        child: Image.asset(
                          'assets/images/bear.png',
                          height: 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Container(
                          width: 115,
                          height: 2,
                          color: Colors.green,
                        ),
                      ),
                      const Text(
                        'Bear',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          playSound('fox');
                        },
                        child: Image.asset(
                          'assets/images/fox.png',
                          height: 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Container(
                          width: 115,
                          height: 2,
                          color: Colors.green,
                        ),
                      ),
                      const Text(
                        'fox',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      playSound('koala');
                    },
                    child: Image.asset(
                      'assets/images/koala.png',
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Container(
                      width: 115,
                      height: 2,
                      color: Colors.purple,
                    ),
                  ),
                  const Text(
                    'koala',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      playSound('camel');
                    },
                    child: Image.asset(
                      'assets/images/camel.png',
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Container(
                      width: 115,
                      height: 2,
                      color: Colors.purple,
                    ),
                  ),
                  const Text(
                    'camel',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        playSound('lion');
                      },
                      child: Image.asset(
                        'assets/images/lion.png',
                        height: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Container(
                        width: 115,
                        height: 2,
                        color: Colors.pink,
                      ),
                    ),
                    const Text(
                      'lion',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        playSound('tiger');
                      },
                      child: Image.asset(
                        'assets/images/tiger.png',
                        height: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Container(
                        width: 115,
                        height: 2,
                        color: Colors.pink,
                      ),
                    ),
                    const Text(
                      'tiger',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
