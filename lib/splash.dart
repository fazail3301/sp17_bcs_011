import 'dart:async';
import 'dart:ui';
import 'package:shimmer/shimmer.dart';
import 'package:sp17_bcs_011/homescreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<Timer> loadData() async {
    return Timer(Duration(seconds: 3), onDoneLoading);
  }

  onDoneLoading() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  void dispose() {
    super.dispose();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.lime, Colors.lightBlue],
            ),
          ),
          child: Shimmer.fromColors(
            baseColor: Color(0xff7f00ff),
            highlightColor: Color(0xffe100ff),
            child: Text(
              '   Hey! Im'
                  'FaZaiL ZaHooR'
                  'S17_BCS_011',
              style: TextStyle(
                fontFamily: 'Ai Nile',
                fontSize: 50,

              ),
            ),
          ),
        ),
      ),
    );
  }
}
