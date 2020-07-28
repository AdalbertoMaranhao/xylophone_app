import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildButton(color: Colors.red, note: 1),
              buildButton(color: Colors.orange, note: 2),
              buildButton(color: Colors.yellow, note: 3),
              buildButton(color: Colors.green, note: 4),
              buildButton(color: Colors.lightBlue, note: 5),
              buildButton(color: Colors.indigo, note: 6),
              buildButton(color: Colors.purple, note: 7),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton({Color color, int note}){
      return Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            playSound(note);
          },
        ),
      );
  }
  
  void playSound(int n){
    final player = AudioCache();
    player.play('note$n.wav');
  }
}