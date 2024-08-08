import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:async/async.dart';
import 'package:audioplayers_platform_interface/audioplayers_platform_interface.dart';
import 'dart:async';
void main() => runApp(xlophonesApp());
class xlophonesApp extends StatelessWidget {
  void playground(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('assets/note$soundNumber.wav'));
  }

  const xlophonesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.red,
                height: 100,
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () async {
                    playground(1);
                    //await player.play(UrlSource('https://example.com/my-audio.wav'));
                  },
                  child: Text('pressed'),
                ),
              ),
              Container(
                height: 100,
                alignment: Alignment.center,
                color: Colors.orange,
                child: ElevatedButton(
                  onPressed: () async {
                    playground(2);
                  },
                  child: Text('pressed'),
                ),
              ),
              Container(
                color: Colors.yellow,
                height: 100,
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () async {
                    playground(3);
                  },
                  child: Text('pressed'),
                ),
              ),
              Container(
                color: Colors.green,
                height: 100,
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () async {
                    playground(4);
                  },
                  child: Text('pressed'),
                ),
              ),
              Container(
                color: Colors.teal,
                height: 100,
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () async {
                    playground(5);
                  },
                  child: Text('pressed'),
                ),
              ),
              Container(
                color: Colors.blue,
                height: 100,
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () async {
                    playground(6);
                  },
                  child: Text('pressed'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
