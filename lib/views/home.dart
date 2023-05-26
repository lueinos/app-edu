import 'package:flutter/material.dart';
import 'globals.dart' as globals;

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String fase_1 = "";
    String fase_2 = "";
    String fase_3 = "";
    String fase_4 = "";

    if (globals.fase == 1) {
      fase_1 = "assets/imagens/dino.jpg";
      fase_2 = "assets/imagens/porco_block.png";
      fase_3 = "assets/imagens/guaxinim_block.png";
      fase_4 = "assets/imagens/preguiça_block.png";
    } else if (globals.fase == 2) {
      fase_1 = "assets/imagens/dino.jpg";
      fase_2 = "assets/imagens/porco.jpg";
      fase_3 = "assets/imagens/guaxinim_block.png";
      fase_4 = "assets/imagens/preguiça_block.png";
    } else if (globals.fase == 3) {
      fase_1 = "assets/imagens/dino.jpg";
      fase_2 = "assets/imagens/porco.jpg";
      fase_3 = "assets/imagens/guaxinim.jpg";
      fase_4 = "assets/imagens/preguiça_block.png";
    } else if (globals.fase == 4) {
      fase_1 = "assets/imagens/dino.jpg";
      fase_2 = "assets/imagens/porco.jpg";
      fase_3 = "assets/imagens/guaxinim.jpg";
      fase_4 = "assets/imagens/preguiça.jpg";
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          title: const Text("Turbinando o Ensino Atípico",
              style: TextStyle(color: Colors.black)),
          backgroundColor: const Color.fromARGB(255, 250, 255, 250),
        ),
        body: Stack(
          children: <Widget>[
            GridView.count(
              crossAxisCount: 2,
              childAspectRatio: MediaQuery.of(context).size.aspectRatio * 1.3,
              scrollDirection: Axis.vertical,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/fase_1_intro");
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          fase_1,
                          scale: 2.5,
                        ),
                      ),
                      const Text(
                        'DINO',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (globals.fase >= 2) {
                      Navigator.pushNamed(context, "/fase_2_intro");
                    }
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          fase_2,
                          scale: 2.5,
                        ),
                      ),
                      const Text(
                        'BATOTA',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (globals.fase >= 3) {
                      Navigator.pushNamed(context, "/fase_3_intro");
                    }
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          fase_3,
                          scale: 2.5,
                        ),
                      ),
                      const Text(
                        'CACAU',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (globals.fase >= 4) {
                      Navigator.pushNamed(context, "/fase_4_intro");
                    }
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          fase_4,
                          scale: 2.5,
                        ),
                      ),
                      const Text(
                        'SONECA',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
