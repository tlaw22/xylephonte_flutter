import 'package:flutter/material.dart';
import 'package:fileaudioplayer/fileaudioplayer.dart';
// end imports

void main() => runApp(XylophoneApp());
// end main

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: (){
                final player = FileAudioPlayer();
                player.start('note2.wav');

              } ,
              child: Text('Click me'),
            ),
          ),
        ),
      ),
    );
  }
}
// end classes
