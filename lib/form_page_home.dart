import 'package:flutter/material.dart';

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
  int tamanhoChave = 0;

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
                onChanged: (value){
                  tamanhoChave = tamChave(value);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Palavra Chave',
                  ),
                validator: (value) {
                  return (  value!= null  && 
                          !(value.contains(' ')) && 
                                (value.isNotEmpty))
                                ? null : 'Insera uma palavra';
                  // tambem fazer codigo para evitar caracteres 
                  // tirar espaço no final
                },   
              ),

              const SizedBox(height: 10),

              TextField(
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
                  if(_formKey.currentState!.validate()){
                    //Espaco();
                    Navigator.of(context).pushReplacementNamed('/play');
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