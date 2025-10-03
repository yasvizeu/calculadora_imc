import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:calculadora_imc/pages/sobre.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Home(), debugShowCheckedModeBanner: false));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController pesoControle = TextEditingController();
  TextEditingController alturaControle = TextEditingController();

  //criação de variável para informação
  String infoText = 'Informe seus dados';
  String infoText2 = '';

  void calcular() {
    setState(() {
      int peso = int.parse(pesoControle.text);
      double altura = double.parse(alturaControle.text);
      double imc = peso / (altura * altura);
      infoText2 = "Seu IMC é: ${imc.toStringAsPrecision(4)}";

      if (imc <= 18.5) {
        infoText = "Abaixo do peso";
      } else if (imc <= 24.9) {
        infoText = "Peso normal";
      } else if (imc <= 29.9) {
        infoText = "Sobrepeso";
      } else if (imc <= 34.9) {
        infoText = "Obesidade grau I";
      } else if (imc <= 39.9) {
        infoText = "Obesidade grau II";
      } else {
        infoText = "Obesidade grau III";
      }

      // infoText = imc.toStringAsPrecision(4);
    });
  }

  void resetInfo() {
    setState(() {
      infoText = '';
      infoText2 = '';
    });
  }

  //criação da função para apagar dados inseridos
  void resetFields() {
    pesoControle.text = '';
    alturaControle.text = '';
    resetInfo();

    setState(() {
      infoText = 'Informe seus dados';
      formKey = GlobalKey<FormState>();
    });
  }

  //criação de ima variável global para testar os dados
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
              title: Text('Calculadora IMC'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),),);
              },
            ),
            ListTile(
              title: Text('Sobre',),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Sobre(),),);
              },
            ),
          ],
        )
      ),
      appBar: AppBar(
        title: Text('Calculadora IMC', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 72, 0, 85),
        iconTheme: IconThemeData(
          color: Colors.white,
          ),
        actions: [
          IconButton(
            onPressed: resetFields,
            icon: Icon(Icons.refresh, color: Colors.white),
          ),
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 50.0,
          child: ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                calcular();
              }
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
            child: Text(
              'Calcular',
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
          ),
        ),

        // child: Container(
        //   height: 50,
        //   color: Color.fromARGB(255, 72, 0, 85),
        //   child:Center(
        //     child: Text('Seu rodapé aqui',
        //     style: TextStyle(color: Colors.white))
        //   )
        // ),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Form(
          //passar a chave que foi criada
          key: formKey,
          child: Column(
            //alinhamento centralizdo
            crossAxisAlignment: CrossAxisAlignment.center,

            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person_outline,
                color: Color.fromARGB(255, 72, 0, 85),
                size: 120,
              ),

              TextFormField(
                controller: pesoControle,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Insira seu peso";
                  }
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Peso (kg): ',
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 72, 0, 85),
                    fontSize: 25,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextFormField(
                  controller: alturaControle,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Insira sua altura";
                    }
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Altura (m): ',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 72, 0, 85),
                      fontSize: 25,
                    ),
                  ),
                ),
              ),

              Text(
                infoText2,
                style: TextStyle(
                  color: Color.fromARGB(255, 72, 0, 85),
                  fontSize: 25.0,
                ),
              ),

              Text(
                infoText,
                style: TextStyle(
                  color: Color.fromARGB(255, 72, 0, 85),
                  fontSize: 25.0,
                ),
              ),

              SizedBox(height: 80.0),

              DefaultTextStyle(
                style: const TextStyle(color: Color.fromARGB(255, 72, 0, 85), fontSize: 40.0, fontFamily: 'Horizon'),
                child: AnimatedTextKit(
                  animatedTexts: [
                    RotateAnimatedText('INCRÍVEL'),
                    RotateAnimatedText('OTIMISMO'),
                    RotateAnimatedText('VAMO LÁ'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}