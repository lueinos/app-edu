// import 'package:flutter/material.dart';

import 'dart:math';
import 'package:flutter/material.dart';

import 'globals.dart' as globals;

class Fase1 extends StatefulWidget {
  const Fase1({Key? key}) : super(key: key);

  @override
  _Fase1State createState() => _Fase1State();
}

GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();

class _Fase1State extends State<Fase1> {
  List<String> _formas = [
    "assets/imagens/circulo.png",
    "assets/imagens/coracao.png",
    "assets/imagens/estrela.png",
    "assets/imagens/losango.png",
    "assets/imagens/nuvem.png",
    "assets/imagens/pentagono.png",
    "assets/imagens/quadrado.png",
    "assets/imagens/Triangulo.png",
  ];

  int _aleatorio1 = Random().nextInt(7);
  int _aleatorio2 = Random().nextInt(7);
  int _aleatorio3 = Random().nextInt(7);

  bool _isForma1Dropped = false;
  bool _isForma2Dropped = false;
  bool _isForma3Dropped = false;

  int qtd_forma = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFd6d9f8),
        appBar: AppBar(
            title: const Text("Fase 1",
                style: const TextStyle(color: Colors.black)),
            backgroundColor: Color(0xFFd6d9f8),
            flexibleSpace: GestureDetector(
                onTap: () {
                  if (qtd_forma == 3) {
                    globals.fase = 2;
                    Navigator.pushNamed(context, "/");
                  }
                },
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      "assets/imagens/seta_fase_1.png",
                      height: 50,
                      width: 50,
                    ),
                  ),
                ))),
        body: Stack(children: <Widget>[
          Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0),
            //alignment: Alignment.center,
            child: Column(children: <Widget>[
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(children: [
                                    Image.asset(
                                      _formas[_aleatorio1],
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.3,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                    Image.asset(
                                      _formas[_aleatorio2],
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.3,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                    Image.asset(
                                      _formas[_aleatorio3],
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.3,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                    DragTarget<String>(
                                      builder: (
                                        BuildContext context,
                                        List<dynamic> accepted,
                                        List<dynamic> rejected,
                                      ) {
                                        return Container(
                                          child: Image.asset(
                                            _isForma1Dropped
                                                ? _formas[_aleatorio1]
                                                : 'assets/imagens/moldura.png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.3,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.1,
                                          ),
                                        );
                                      },
                                      onWillAccept: (data) {
                                        return _formas[_aleatorio1] == data;
                                      },
                                      onAccept: (data) {
                                        setState(() {
                                          qtd_forma = qtd_forma + 1;
                                          _isForma1Dropped = true;
                                        });
                                      },
                                    ),
                                    DragTarget<String>(
                                      builder: (
                                        BuildContext context,
                                        List<dynamic> accepted,
                                        List<dynamic> rejected,
                                      ) {
                                        return Container(
                                          child: Image.asset(
                                            _isForma2Dropped
                                                ? _formas[_aleatorio2]
                                                : 'assets/imagens/moldura.png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.3,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.1,
                                          ),
                                        );
                                      },
                                      onWillAccept: (data) {
                                        return _formas[_aleatorio2] == data;
                                      },
                                      onAccept: (data) {
                                        setState(() {
                                          qtd_forma = qtd_forma + 1;
                                          _isForma2Dropped = true;
                                        });
                                      },
                                    ),
                                    DragTarget<String>(
                                      builder: (
                                        BuildContext context,
                                        List<dynamic> accepted,
                                        List<dynamic> rejected,
                                      ) {
                                        return Container(
                                          child: Image.asset(
                                            _isForma3Dropped
                                                ? _formas[_aleatorio3]
                                                : 'assets/imagens/moldura.png',
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.3,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.1,
                                          ),
                                        );
                                      },
                                      onWillAccept: (data) {
                                        return _formas[_aleatorio3] == data;
                                      },
                                      onAccept: (data) {
                                        setState(() {
                                          qtd_forma = qtd_forma + 1;
                                          _isForma3Dropped = true;
                                        });
                                      },
                                    ),
                                  ]),
                                ])),
                      ])),
              Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.1),
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SingleChildScrollView(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Draggable<String>(
                                  // Data is the value this Draggable stores.
                                  data: 'assets/imagens/circulo.png',
                                  child: Container(
                                    child: Center(
                                      child: Image.asset(
                                        'assets/imagens/circulo.png',
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                    ),
                                  ),
                                  feedback: Container(
                                    child: Center(
                                      child: Image.asset(
                                        'assets/imagens/circulo.png',
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                    ),
                                  ),
                                  childWhenDragging: Container(),
                                ),
                                Draggable<String>(
                                  // Data is the value this Draggable stores.
                                  data: 'assets/imagens/coracao.png',
                                  child: Container(
                                    child: Center(
                                      child: Image.asset(
                                        'assets/imagens/coracao.png',
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                    ),
                                  ),
                                  feedback: Container(
                                    child: Center(
                                      child: Image.asset(
                                        'assets/imagens/coracao.png',
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                    ),
                                  ),
                                  childWhenDragging: Container(),
                                ),
                                Draggable<String>(
                                  // Data is the value this Draggable stores.
                                  data: 'assets/imagens/estrela.png',
                                  child: Container(
                                    child: Center(
                                      child: Image.asset(
                                        'assets/imagens/estrela.png',
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                    ),
                                  ),
                                  feedback: Container(
                                    child: Center(
                                      child: Image.asset(
                                        'assets/imagens/estrela.png',
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                    ),
                                  ),
                                  childWhenDragging: Container(),
                                ),
                                Draggable<String>(
                                  // Data is the value this Draggable stores.
                                  data: 'assets/imagens/losango.png',
                                  child: Container(
                                    child: Center(
                                      child: Image.asset(
                                        'assets/imagens/losango.png',
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                    ),
                                  ),
                                  feedback: Container(
                                    child: Center(
                                      child: Image.asset(
                                        'assets/imagens/losango.png',
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                    ),
                                  ),
                                  childWhenDragging: Container(),
                                ),
                                Draggable<String>(
                                  // Data is the value this Draggable stores.
                                  data: 'assets/imagens/nuvem.png',
                                  child: Container(
                                    child: Center(
                                      child: Image.asset(
                                        'assets/imagens/nuvem.png',
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                    ),
                                  ),
                                  feedback: Container(
                                    child: Center(
                                      child: Image.asset(
                                        'assets/imagens/nuvem.png',
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                    ),
                                  ),
                                  childWhenDragging: Container(),
                                ),
                                Draggable<String>(
                                  // Data is the value this Draggable stores.
                                  data: 'assets/imagens/pentagono.png',
                                  child: Container(
                                    child: Center(
                                      child: Image.asset(
                                        'assets/imagens/pentagono.png',
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                    ),
                                  ),
                                  feedback: Container(
                                    child: Center(
                                      child: Image.asset(
                                        'assets/imagens/pentagono.png',
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                    ),
                                  ),
                                  childWhenDragging: Container(),
                                ),
                                Draggable<String>(
                                  // Data is the value this Draggable stores.
                                  data: 'assets/imagens/quadrado.png',
                                  child: Container(
                                    child: Center(
                                      child: Image.asset(
                                        'assets/imagens/quadrado.png',
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                    ),
                                  ),
                                  feedback: Container(
                                    child: Center(
                                      child: Image.asset(
                                        'assets/imagens/quadrado.png',
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                    ),
                                  ),
                                  childWhenDragging: Container(),
                                ),
                                Draggable<String>(
                                  // Data is the value this Draggable stores.
                                  data: 'assets/imagens/Triangulo.png',
                                  child: Container(
                                    child: Center(
                                      child: Image.asset(
                                        'assets/imagens/Triangulo.png',
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                    ),
                                  ),
                                  feedback: Container(
                                    child: Center(
                                      child: Image.asset(
                                        'assets/imagens/Triangulo.png',
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                      ),
                                    ),
                                  ),
                                  childWhenDragging: Container(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ))),
            ]),
          ),
        ]),
      ),
    );
  }

  void showSnackBarGlobal(BuildContext context, String message) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
      message,
      textScaleFactor: 2,
    )));
  }
}
