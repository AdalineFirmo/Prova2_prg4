import 'package:flutter/material.dart';

class Teclas extends StatefulWidget {
  const Teclas({Key? key, this.handleLetterPressed}) : super(key: key);

  final void Function(String)? handleLetterPressed;

  @override
  State<Teclas> createState() => _TeclasState(handleLetterPressed: handleLetterPressed);
}

class _TeclasState extends State<Teclas> {

  final void Function(String)? handleLetterPressed;

  List<List> alf =  [['A', 'B', 'C', 'D'],
                       ['E', 'F', 'G', 'H'],
                       ['I', 'J', 'K', 'L'],
                       ['M', 'N', 'O', 'P'],
                       ['Q', 'R', 'S', 'T'], 
                       ['U', 'V', 'W', 'X'],
                       [' ', 'Y', 'Z', ' '],];

  _TeclasState({this.handleLetterPressed});

  @override
  Widget build(BuildContext context) {
    return Table(
    children: [
      for (final row in alf )
        TableRow(
          children: [
            for (final letter in row)
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ElevatedButton(
                  onPressed: () => handleLetterPressed!(letter),
                  child: Text(
                    letter, 
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 25),
                    
                  ),
                ),
              ),
          ]
        ),
    ],
   );
  }
}