import 'package:flutter/material.dart';
import 'package:sp17_bcs_011/switchplayer.dart';
import 'game.dart';
import 'package:sp17_bcs_011/homescreen.dart';
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black12,
          body: DicePage(),
        ),
      ),
    );

// 0F5CBF, 027333, F2A71B, F23D3D

class DicePage extends StatefulWidget {
  DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var game = Game(3);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: Colors.white,
            margin: EdgeInsets.only(top: 50.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "LEADERBOARD",
                    style: TextStyle(fontSize: 25.0, letterSpacing: 18),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      CustomText(
                        game.first.name.toUpperCase(),
                        color: Colors.black,
                      ),
                      Text(game.first.score.toString())
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
