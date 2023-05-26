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
    return Scaffold(
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
                  padding: EdgeInsets.all(16.0),
                  child: Image.asset(
                    'assets/imagens/dino.jpg',
                    width: 150,
                    height: 150,
                  ),
                ),
                Container(
                  color: Colors.lightBlue[200],
                  padding: EdgeInsets.all(16.0),
                  child: Image.asset(
                    'assets/imagens/porco.jpg',
                    width: 150,
                    height: 150,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Turbinando o Ensino Atípico',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.orange[200],
                  padding: EdgeInsets.all(16.0),
                  child: Image.asset(
                    'assets/imagens/guaxinim.jpg',
                    width: 150,
                    height: 150,
                  ),
                ),
                Container(
                  color: Colors.pink[200],
                  padding: EdgeInsets.all(16.0),
                  child: Image.asset(
                    'assets/imagens/preguiça.jpg',
                    width: 150,
                    height: 150,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            GestureDetector(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/home");
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                  onPrimary: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  ),
                ),
                child: Text(
                  'Play',
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
    );
  }
}
