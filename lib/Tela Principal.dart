import 'dart:math';

import 'package:cara_ou_coroa/Resultado.dart';
import 'package:flutter/material.dart';

class Tela1 extends StatefulWidget {

  @override
  State<Tela1> createState() => _Tela1State();
}

class _Tela1State extends State<Tela1> {

  void exibirRes() {

    var itens = ["cara", "coroa"];
    var num = Random().nextInt(itens.length);
    var resul = itens[num];

    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Resultado(resul))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcc80),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Image.asset(
                "images/CaraouCoroa.png"
            ),
          ),
          ElevatedButton(
           style: ElevatedButton.styleFrom(
             primary: Colors.white
           ),
              onPressed: (){
               exibirRes();
              },
              child: Text(
                "Jogue!",
                style: TextStyle(
                  color: Color(0xffffcc80),
                  fontSize: 25
                ),
              ),
          ),
        ],
      )
    );
  }
}
