import 'package:flutter/material.dart';
import 'package:fileaudioplayer/fileaudioplayer.dart';
// end imports

void main() => runApp(XylophoneApp());
// end main


void playSound(int soundNumber){

  final player = FileAudioPlayer();
  player.start('note$soundNumber.wav');

}

Expanded buildKey(Color color, int soundNumber ){
  return Expanded(
    child: TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
      ),
      onPressed: (){
        playSound(soundNumber);
      } ,
      child: Text('Click me'),
    ),
  );

}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 1),
              buildKey(Colors.pink, 2),
              buildKey(Colors.blue, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.orange, 5),




            ],
          ),
        ),
      ),
    );
  }
}
// end classes
