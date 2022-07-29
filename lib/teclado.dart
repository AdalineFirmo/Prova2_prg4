import 'package:flutter/material.dart';

class Teclas extends StatefulWidget {
  const Teclas({Key? key}) : super(key: key);

  @override
  State<Teclas> createState() => _TeclasState();
}

class _TeclasState extends State<Teclas> {

  Widget _card(){
    
    List<String> alf = const ['A', 'B', 'C', 'D', 'E', 'F', 'G',
                                  'H', 'I', 'J', 'K', 'L', 'M', 'N', 
                                  'O', 'P', 'Q', 'R', 'S', 'T', 'U',
                                           'V', 'W', 'X',' ',  'Y', 'Z', ' ' ];
    if( cont >= 28){cont = 0;}

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          alf[cont++], 
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 25),
          
        ),
      ),
    );
  }

  int  cont = 0; 
  @override
  Widget build(BuildContext context) {
    return Table(
    children: [
      TableRow(
        children: [
          _card(),
          _card(),
          _card(),
          _card(),
        ]
      ),
      
      TableRow(
        children: [
          _card(),
          _card(),
          _card(),
          _card(),
        ]
      ),
      TableRow(
        children: [
          _card(),
          _card(),
          _card(),
          _card(),
        ]
      ),
      TableRow(
        children: [
          _card(),
          _card(),
          _card(),
          _card(),
        ]
      ),
      TableRow(
        children: [
          _card(),
          _card(),
          _card(),
          _card(),
        ]
      ),
      TableRow(
        children: [
          _card(),
          _card(),
          _card(),
          _card(),
        ]
      ),
      TableRow(
        children: [
          _card(),
          _card(),
          _card(),
          _card(),
        ]
      ),
    ],
    );
  }
}