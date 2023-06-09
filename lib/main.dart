import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget buildkey(int num, Color col){
    //final Color x=col;
    return Expanded(
      child: FlatButton(onPressed: (){
        final player=AudioCache();
        player.play('note$num.wav');
        },
        color: col,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildkey(1, Colors.red),
                buildkey(2, Colors.yellow),
                buildkey(3,Colors.blue),
                buildkey(4,Colors.green),
                buildkey(5,Colors.orange),
                buildkey(6,Colors.purple),
                buildkey(7,Colors.indigo),
        ]
            ),
          ),
          ),
      debugShowCheckedModeBanner: false,
    );
  }
}
