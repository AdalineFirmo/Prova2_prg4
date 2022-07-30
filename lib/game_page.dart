
import 'package:flutter/material.dart';

import 'keyboard.dart';

class GamePage extends StatefulWidget {
  
  String word;

  GamePage(this.word, {Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {

  Widget lengthWord(){
    int lWord;
    lWord =  (widget.word).length;
    return ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(8),
                itemBuilder: (context, index){ 
                  return Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        color: const Color.fromARGB(255, 234, 189, 98),
                        child: const Text(' ',
                        //(widget.word.toUpperCase().split(''))[index] 
                                    style: TextStyle(fontSize: 20,),
                                ),
                      ),
                      const SizedBox(width: 2),
                    ],
                  );
                },
                itemCount: lWord, 
              );
  }  

  void handleLetterPressed(String letter){
      bool wasHit = widget.word.toUpperCase().contains(letter); 
      ScaffoldMessenger.of(context).showSnackBar(
         SnackBar(
          content: Text(
            wasHit? 'Acertou!': 'Errou... :(',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.grey,
          duration: const Duration(seconds: 1),
          padding: const EdgeInsets.all(10),
        ),
      );
    }

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[ 
                Image.asset(
                  'assets/images/error0.png', 
                  height: 250.0,
                ),
                Expanded(child: lengthWord()),
                Teclas(handleLetterPressed: handleLetterPressed),
              ],
           ),
         ],
        ),
      );
    
  }
}

