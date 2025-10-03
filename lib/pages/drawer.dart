import 'package:calculadora_imc/pages/home.dart';
import 'package:calculadora_imc/pages/sobre.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 72, 0, 85),
              ),
            child: Text('Menu',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),)),
            ListTile(
              leading:Icon(Icons.calculate, 
              color: Color.fromARGB(255, 72, 0, 85),),
              title: Text('Calculadora IMC'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),),);
              },
            ),
            ListTile(
              // trailing: Icon(Icons.info),
              leading:Icon(Icons.info, 
              color: Color.fromARGB(255, 72, 0, 85),),
              title: Text('Sobre',),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Sobre(),),);
              },
            ),
          ],
        )
      ),
      appBar: AppBar(
        title: Text('Aplicativo IMC', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 72, 0, 85),
        iconTheme: IconThemeData(
          color: Colors.white,
          ),
        // actions: [
        //   IconButton(
        //     onPressed: resetFields,
        //     icon: Icon(Icons.refresh, color: Colors.white),
        //   ),
        // ],
      ),
    );
  }
}