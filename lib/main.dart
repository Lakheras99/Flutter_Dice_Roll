import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // var Image = {A};
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Roler',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dice Roler'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage('assets/images/one.png');
  AssetImage two = AssetImage('assets/images/two.png');
  AssetImage three = AssetImage('assets/images/three.png');
  AssetImage four = AssetImage('assets/images/four.png');
  AssetImage five = AssetImage('assets/images/five.png');
  AssetImage six = AssetImage('assets/images/Six.png');
  AssetImage diceImage = AssetImage('assets/images/one.png');

  void initState() {
    super.initState();
    setState(() {
      diceImage = one;
    });
  }

  void RollDice() {
    int random = (1 + Random().nextInt(6));

    AssetImage newImage = one;
    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }
    setState(() {
      diceImage = newImage;
    });
  }
// Asswt Ima

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: diceImage,
            width: 200,
            height: 200,
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            child: ElevatedButton(
              onPressed: RollDice,
              child: Text('Roll the dice', style: TextStyle()),
            ),
            color: Colors.amber,
          )
        ],
      )),
    );
  }
}
