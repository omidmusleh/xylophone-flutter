import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

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
        appBar: AppBar(title: const Text('Xylophone'), centerTitle: true),
        body: Column(
          children: [
            buildKey(color: Colors.red, sound: 'sounds/zekr1.mp3'),

            buildKey(color: Colors.orange, sound: 'sounds/zekr2.mp3'),

            buildKey(color: Colors.yellow, sound: 'sounds/zekr3.mp3'),

            buildKey(color: Colors.green, sound: 'sounds/zekr4.mp3'),
          ],
        ),
      ),
    );
  }

  Widget buildKey({required Color color, required String sound}) {
    return Expanded(
      child: GestureDetector(
        onTap: () async {
          final player = AudioPlayer();

          await player.play(AssetSource(sound));
        },
        child: Container(color: color, width: double.infinity),
      ),
    );
  }
}
