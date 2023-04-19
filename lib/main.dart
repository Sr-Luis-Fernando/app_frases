import 'dart:math';
import 'package:flutter/material.dart';
//app para frases de efeito do valorant (especial para iniciadores apenas.)
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'APP para frases de efeito dos iniciadores do VALORANT',
    home: frases(),
  ));
}
class frases extends StatefulWidget {
  const frases({Key? key}) : super(key: key);
  @override
  State<frases> createState() => _frasesState();

}
class _frasesState extends State<frases> {
  //back do app
  //criar um array de frases para ser exibidas de forma aleatória
  var _frases = [
    'EU SOU UM CAÇADOR!',//array frase 0
    'Atrás deles!',//array frase 1
    'Cuidado! tubarão vai te pegar!',//array frase 2
    'Você... Está VUNERÁVEL!',//array frase 3
    'Pesadelo... ACABE COM ELES!',//array frase 4
    'VAMO NESSA!',//array frase 5
  ];
var _frasesGerada= 'Clique abaixo para gerar uma frase!';//o texto vai estar depois da imagem do logo, para chamar a função _gerarfrase

  void _gerarFrase(){//função de gerar as frases
    //numero sorteado irá pegar de forma aleatória de 0,1,2,3,4,5 das frases do array
  var numeroSorteado = Random().nextInt(_frases.length);
  //random é um import do tipo 'dart:math';
    //o random é responsável por exibir o array de forma aleatória
    setState(() {
      _frasesGerada=_frases[numeroSorteado];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases dos iniciadores'),
        backgroundColor: Colors.red,//cor da appBar
      ),
      body: Center(//centralizar o body
    child: Container(
    padding: EdgeInsets.all(16),//espaçamento appbar para o body
    child: Column(//verificar os elementos
    mainAxisAlignment: MainAxisAlignment.spaceAround,//spacearound== entre os espaços // .
    crossAxisAlignment: CrossAxisAlignment.center,//centralizar o espaçamento
    children: <Widget> [
      Image.asset('image/VALORANT.png'//Criar a logo no canva
     ),
    Text(_frasesGerada,
    style: TextStyle(
    fontSize: 25,
    fontStyle: FontStyle.italic,
    color: Colors.black87,
       ),
    ),
    ElevatedButton(//botão para gerar as frases.
    onPressed: _gerarFrase,//colocar a função array de frases aleatórias
    child: Text('Nova frase',
    style: TextStyle(
      fontSize: 25,
      color: Colors.black87,
      fontWeight: FontWeight.bold
    ),
    ),
    ),
    ],// ),
    ),// ),
    ),
    ),
    );
  }
}
