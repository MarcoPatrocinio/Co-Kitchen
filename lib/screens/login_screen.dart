import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:
      Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),

        child: Padding(
            padding: const EdgeInsets.all(25),
            child: Center(
                child: Flex(
                    direction: Axis.vertical,
                    children: [
                      Container(
                        height: 150,
                        margin: const EdgeInsets.all(25),
                        child: const Image(image: AssetImage('assets/images/Logo.png')),
                      ),
                      Container(
                        height: 200,
                        margin: const EdgeInsets.all(25),
                        child: Form(
                          child: ListView(
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                    labelText: 'Email'
                                ),
                                textInputAction: TextInputAction.next,
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                    labelText: 'Senha'
                                ),
                                textInputAction: TextInputAction.done,
                                obscureText: true,
                              ),
                              ElevatedButton(onPressed: (() => ''), child: Text('Prosseguir'))
                            ],
                          ),
                        ),
                      )
                    ]
                )
            )
        ),
      )
    );
  }
}