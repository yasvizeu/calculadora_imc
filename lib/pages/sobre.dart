// import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {
  const Sobre({super.key});

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 72, 0, 85),
        iconTheme: IconThemeData(
          color: Colors.white,
          ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.refresh, color: Colors.white),
          ),
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          child: Container(
          height: 50,
          color: Color.fromARGB(255, 72, 0, 85),
          child:Center(
            child: Text('Seu rodapé aqui',
            style: TextStyle(color: Colors.white))
          )
        ))),

    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    body: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Sobre',
          style: TextStyle(
          color: Color.fromARGB(255, 72, 0, 85),
          fontSize: 40.0,) 
        ),

        SizedBox(height: 10.0,),

        Text('Senac - TI', 
        style: TextStyle(fontSize: 30.0)), 
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Treinamento Flutter', style: TextStyle(
            fontSize: 25.0,
          ),),
          SizedBox(width: 30.0,),
          Icon(Icons.flutter_dash,
          color: Color.fromARGB(255, 72, 0, 85),
          size: 30,),
          ],
          ),
          SizedBox(height: 10.0,),
          Text('Desenvolvido por Yasmin Vizeu', style: TextStyle(color: Color.fromARGB(255, 72, 0, 85),
          fontSize: 25.0)
          ),
          Text('03 de outubro de 2025', style: TextStyle(fontSize: 25))


        ],
      ) 
    );
  }
}