
import 'package:flutter/material.dart';

import 'form_page_home.dart';

class HangmanGame extends StatefulWidget {
  const HangmanGame({Key? key}) : super(key: key);

  @override
  State<HangmanGame> createState() => _HangmanGameState();
}

class _HangmanGameState extends State<HangmanGame> {

  Widget _body() {
    return ListView(
          children:[ 
              Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/home.png',
                  height: 360.0,
                ),
          
                const Text('JOGO DA FORCA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),

                FormHome(),
                
                const Text('Adaline Nogueira Fernandes Firmo',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14  ,
                    color: Color.fromARGB(255, 74, 125, 129)                  ),
                ),
              ],
            ),
          ],
        );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Stack(
          children:[ 
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/images/background.jpg', 
                fit: BoxFit.cover,    
              )
            ),
            _body(),
          ]
        ),
      ),
    );
    
  }
}

