import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Ask Me Anything',
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballFace = 1;

  int generateRandomNumber() => Random().nextInt(5) + 1; // 1 - 5

  void randomizeBallFace() => setState(
        () {
          ballFace = generateRandomNumber();
        },
      );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        onPressed: () => randomizeBallFace(),
        child: Image.asset(
          'images/ball$ballFace.png',
        ),
      ),
    );
  }
}
