import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {

  String valor;

  Resultado(this.valor);

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {

  @override
  Widget build(BuildContext context) {

    var imagem = "images/Cara.png";
    if(widget.valor == "cara") {
      imagem = "images/Cara.png";
    } else {
      imagem = "images/Coroa.png";
    }

    return Scaffold(
        backgroundColor: Color(0xffffcc80),
        body: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 60, right: 240),
              child:
              GestureDetector(
                onTap: () {
                Navigator.pop(context);
                },
                child: Image.asset(
                  "images/cruz.png",
                  height: 30,
                  width: 30,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50),
              child: Image.asset(imagem),
            ),
          ],
        )
    );
  }
}
