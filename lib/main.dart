import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Frases do Dia",
    debugShowCheckedModeBanner: false,
    home:HomeStateful()
  ));
}


class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  List<String> frases = [
    "\"A persistência é o caminho do êxito.\" \n-Charles Chaplin",
    "\"As pessoas costumam dizer que a motivação não dura sempre. Bem, nem o efeito do banho, por isso recomenda-se diariamente.\"\n-Zig Ziglar",
    "\"No meio da dificuldade encontra-se a oportunidade.\"\n-Albert Einstein",
    "\"É parte da cura o desejo de ser curado.\"\n-Sêneca",
    "\"O que me preocupa não é o grito dos maus. É o silêncio dos bons.\"\n-Martin Luther King",
    "\"Tudo o que um sonho precisa para ser realizado é alguém que acredite que ele possa ser realizado.\"\n-Roberto Shinyashiki",
    "\"O insucesso é apenas uma oportunidade para recomeçar com mais inteligência.\"\n-Henry Ford",
    "\"O sucesso é ir de fracasso em fracasso sem perder entusiasmo.\"\n-Winston Churchill",
    "\"Experiência é o nome que cada um dá a seus erros.\"\n-Oscar Wilde",
    "\"Lembre sempre que a sua vontade de triunfar é mais importante do que qualquer outra coisa.\"\n-Abraham Lincoln"];

  int _indice = 0;
  String _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _fraseGerar(){
    setState(() {
      _fraseGerada = frases[Random().nextInt(frases.length)];
    });
  }
  @override
  Widget build(BuildContext context) {
    var _titulo = "Frases do Dia";
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.book),
            );
          },
        ),
        title: Text(
          _titulo,
          style: TextStyle(fontStyle: FontStyle.italic) ,
        ),
        backgroundColor: Colors.blueAccent,
      ),

      body:
      Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Text(
              "${_fraseGerada}",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueGrey,
                fontStyle: FontStyle.italic,
              ),
            ),
            RaisedButton(
              child:
                Text(
                "Nova Frase",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.lightGreen,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              onPressed: _fraseGerar,
            )
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.teal,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              Text("@CarlosBrunoFreitasSardinha",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white60,
                    fontWeight: FontWeight.bold
                ),)
            ],
          ),
        ),
      ),
    );
  }
}
