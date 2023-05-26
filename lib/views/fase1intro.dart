import 'package:flutter/material.dart';

class Fase1Intro extends StatelessWidget {
  const Fase1Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFd6d9f8),
      appBar: AppBar(
          title: const Text("Fase 1", style: TextStyle(color: Colors.black)),
          backgroundColor: const Color(0xFFd6d9f8),
          flexibleSpace: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/fase_1");
              },
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    "assets/imagens/seta_fase_1.png",
                    height: 50,
                    width: 50,
                  ),
                ),
              ))),
      body: Container(
          //   children: <Widget>[
          alignment: Alignment.bottomCenter,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/imagens/formas_fundo.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Image.asset(
              "assets/imagens/dino_dialog.png",
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.5,
            ),
          ])),
    );
  }
}
