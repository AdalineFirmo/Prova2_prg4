import 'package:flutter/material.dart';
import 'package:hangman_game/teclado.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Stack(
          children:[
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/images/background.jpg', 
                fit: BoxFit.cover,    
              )
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[ 
                Image.asset(
                  'assets/images/error0.png', 
                  height: 250.0,
                ),
                Row(
                  children: [
                    ListView(
                      children: [
                        
                      ],
                    ),
                  ],
                ),
                const Teclas(),
              ],
           ),
         ],
        ),
      );
  }
}
