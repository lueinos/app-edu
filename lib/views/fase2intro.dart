import 'package:flutter/material.dart';

class Fase2Intro extends StatelessWidget {
  const Fase2Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFd3e6ed),
        appBar: AppBar(
            title: const Text("Fase 2", style: TextStyle(color: Colors.black)),
            backgroundColor: const Color(0xFFd3e6ed),
            flexibleSpace: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/fase_2");
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      "assets/imagens/seta_fase_2.png",
                      height: 50,
                      width: 50,
                    ),
                  ),
                ))),
        body: Container(
          alignment: Alignment.bottomCenter,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/imagens/bolinhas.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Image.asset(
              "assets/imagens/porco_dialog.png",
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.5,
            ),
          ]),
        ));
  }
}
