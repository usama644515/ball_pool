import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Center(
            child: Text(
              'Ask Any Question',
              style: TextStyle(fontSize: 25.0),
            ),
          ),
        ),
        body: BallPoll(),
      ),
    ),
  );
}

class BallPoll extends StatefulWidget {
  const BallPoll({Key? key}) : super(key: key);

  @override
  _BallPollState createState() => _BallPollState();
}

class _BallPollState extends State<BallPoll> {
  int pic = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  pic = Random().nextInt(4) + 1;
                });
              },
              child: Image(
                image: AssetImage('images/ball$pic.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
