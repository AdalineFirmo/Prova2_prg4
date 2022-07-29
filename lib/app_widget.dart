import 'package:flutter/material.dart';
import 'package:hangman_game/game_page.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) =>  HangmanGame(),
        '/play':(context) =>  GamePage(),
      }, 
    );
  }
}
