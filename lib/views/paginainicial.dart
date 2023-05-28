import 'package:flutter/material.dart';
import 'globals.dart' as globals;

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.purple[200],
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                    'assets/imagens/dino.jpg',
                    width: MediaQuery.of(context).size.width * 0.20,
                    height: MediaQuery.of(context).size.height * 0.30,
                  ),
                ),
                Container(
                  color: Colors.lightBlue[200],
                  padding: const EdgeInsets.all(5.0),
                  margin: const EdgeInsets.only(left: 40.0),
                  child: Image.asset(
                    'assets/imagens/porco.jpg',
                    width: MediaQuery.of(context).size.width * 0.20,
                    height: MediaQuery.of(context).size.height * 0.30,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Turbinando o Ensino Atípico',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.orange[200],
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                    'assets/imagens/guaxinim.jpg',
                    width: MediaQuery.of(context).size.width * 0.20,
                    height: MediaQuery.of(context).size.height * 0.30,
                  ),
                ),
                Container(
                  color: Colors.pink[200],
                  padding: const EdgeInsets.all(5.0),
                  margin: const EdgeInsets.only(left: 40.0),
                  child: Image.asset(
                    'assets/imagens/preguiça.jpg',
                    width: MediaQuery.of(context).size.width * 0.20,
                    height: MediaQuery.of(context).size.height * 0.30,
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.001),
            GestureDetector(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/home");
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                  onPrimary: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  side: const BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  ),
                ),
                child: const Text(
                  'Jogar',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
