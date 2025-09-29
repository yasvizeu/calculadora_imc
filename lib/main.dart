import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    ),
    );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC',
        style: TextStyle(
          color: Colors.white,
        ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 72, 0, 85),
        actions: [
          IconButton(onPressed: null, 
          icon: Icon(Icons.refresh,
          color: Colors.white,)
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        //alinhamento centralizdo
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Icon(Icons.person_outline,
          color:  const Color.fromARGB(255, 72, 0, 85),
          size: 120,),

          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Peso (kg)',
              labelStyle: TextStyle(
                color: Colors.purple, 
                fontSize:25)
                ),   
          ),

          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Altura (cm)',
              labelStyle: TextStyle(
                color: Colors.purple, 
                fontSize:25
                ),
            ),
            ), 

            ElevatedButton(onPressed: null, 
            child: Text('Calcular',
            style: TextStyle(color: Colors.white, fontSize: 50)),)   
        ],
      
      )
      ,);
    
  }
}

