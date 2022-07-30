import 'package:flutter/material.dart';
import 'package:hangman_game/game_page.dart';

class FormHome extends StatefulWidget {
  const FormHome({Key? key}) : super(key: key);

  @override
  State<FormHome> createState() => _FormHomeState();
}

class _FormHomeState extends State<FormHome> {

  int tamChave(String chave){
    return (chave.length);
  }

  String dica = '';
  String word = '';

  TextEditingController chave  = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,

        child: Padding(
          padding: const EdgeInsets.all(15.0),

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
          
            children: [                        
              const SizedBox(height: 50),

              TextFormField(
                controller: chave,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Palavra Chave',
                  ),

                validator: (value) {
                  if ( value== null  || (value.contains(' '))){
                    return ('Insira somente uma palavra');
                  }
                  if ( value.isEmpty){
                    return ('Insira uma palavra');
                  }
                    return  null;
                  // tambem fazer codigo para evitar caracteres 
                  // tirar espaço no final
                },   
              ),

              const SizedBox(height: 10),

              TextField(
                //controller: ,
                keyboardType: TextInputType.text,
                onChanged: (value){
                  dica = value; 
                }, 
                decoration: const InputDecoration(
                  labelText: 'Dica',
                  border: OutlineInputBorder()
                  ),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: (){
                  
                  word = chave.text;

                  if(_formKey.currentState!.validate()){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => GamePage(word)),
                    );
                  }
                }, 
                child: const Text(
                  'Iniciar', 
                  style: TextStyle(color: Colors.white),
                  ),
              ),
            ],
          ),
        ),
      );
  }
}