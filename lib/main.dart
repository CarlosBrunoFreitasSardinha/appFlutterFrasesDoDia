import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Frases do dia.'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _numeroAleatorio = 0;
  List _frases =[
    '“Os problemas são oportunidades para se mostrar o que sabe.” (Duke Ellington)',
    '“Nossos fracassos, às vezes, são mais frutíferos do que os êxitos.” (Henry Ford)',
    '“Tente de novo. Fracasse de novo. Mas fracasse melhor”. (Samuel Beckett)',
    '“É costume de um tolo, quando erra, queixar-se dos outros. É costume de um sábio queixar-se de si mesmo”. (Sócrates)',
    '“O verdadeiro heroísmo consiste em persistir por mais um momento, quando tudo parece perdido”. (W. F. Grenfel)'];

  void _incrementCounter() {
    setState(() {
     _numeroAleatorio = new Random().nextInt(5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Pressione o botão para gerar uma Frase!\n',
              style: Theme.of(context).textTheme.display1,
            ),
            Text(
              _frases[_numeroAleatorio],
              style: Theme.of(context).textTheme.title,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
