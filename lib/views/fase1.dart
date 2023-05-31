// import 'package:flutter/material.dart';

import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import 'globals.dart' as globals;

class Fase1 extends StatefulWidget {
  const Fase1({Key? key}) : super(key: key);

  @override
  _Fase1State createState() => _Fase1State();
}

ConfettiController _controllerCenter =
    ConfettiController(duration: const Duration(seconds: 10));
ConfettiController _controllerCenter2 =
    ConfettiController(duration: const Duration(seconds: 10));

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

class _Fase1State extends State<Fase1> {
  final List<String> _formas = [
    "assets/imagens/circulo.png",
    "assets/imagens/coracao.png",
    "assets/imagens/estrela.png",
    "assets/imagens/losango.png",
    "assets/imagens/nuvem.png",
    "assets/imagens/pentagono.png",
    "assets/imagens/quadrado.png",
    "assets/imagens/triangulo.png",
  ];

  final int _aleatorio1 = Random().nextInt(8);
  final int _aleatorio2 = Random().nextInt(8);
  final int _aleatorio3 = Random().nextInt(8);

  bool _isForma1Dropped = false;
  bool _isForma2Dropped = false;
  bool _isForma3Dropped = false;

  final _player = AudioPlayer();

  int qtd_forma = 0;

  @override
  Widget build(BuildContext context) {
    void executar(String nomeAudio) async {
      await _player.setSource(AssetSource('audios/$nomeAudio.mp3'));
      await _player.play(AssetSource('audios/$nomeAudio.mp3'));
    }

    void executarW(String nomeAudio) async {
      await _player.setSource(AssetSource('audios/$nomeAudio.wav'));
      await _player.play(AssetSource('audios/$nomeAudio.wav'));
    }

    return SafeArea(
      child: Container(
        child: Scaffold(
          backgroundColor: const Color(0xFFd6d9f8),
          appBar: AppBar(
            title: const Text("Fase 1", style: TextStyle(color: Colors.black)),
            backgroundColor: const Color(0xFFd6d9f8),
            flexibleSpace: GestureDetector(
              onTap: () {
                if (qtd_forma == 3) {
                  if (globals.fase < 2) {
                    globals.fase = 2;
                  }
                  Navigator.pushNamed(context, "/home");
                }
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
              ),
            ),
          ),
          body: Stack(
            children: <Widget>[
              Container(
                // margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/imagens/dino_fundo.jpg"),
                    opacity: .45,
                    fit: BoxFit.cover,
                  ),
                ),
                //alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              color: Colors.white60,
                              border: Border.all(color: Colors.black),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
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
                                        if (_formas[_aleatorio1] != data) {
                                          executar("error");
                                        } else {
                                          executarW("acertou");
                                        }
                                        return _formas[_aleatorio1] == data;
                                      },
                                      onAccept: (data) async {
                                        setState(
                                          () {
                                            qtd_forma = qtd_forma + 1;
                                            _isForma1Dropped = true;
                                          },
                                        );
                                        if (qtd_forma == 3) {
                                          _controllerCenter.play();
                                          _controllerCenter2.play();
                                          await showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Dialog(
                                                child: Container(
                                                  height: 300,
                                                  child: Stack(
                                                    children: [
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Image.asset(
                                                            'assets/imagens/dino_parab.png',
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.45,
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.5,
                                                          ),
                                                          const Text(
                                                            "Você Conseguiu!!!",
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                            ),
                                                          ),
                                                          ElevatedButton(
                                                            onPressed: () {
                                                              _controllerCenter
                                                                  .stop();
                                                              _controllerCenter2
                                                                  .stop();
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child: const Text(
                                                                "Fechar"),
                                                          )
                                                        ],
                                                      ),
                                                      ConfettiWidget(
                                                        confettiController:
                                                            _controllerCenter2,
                                                        blastDirectionality:
                                                            BlastDirectionality
                                                                .explosive,
                                                        shouldLoop: true,
                                                        numberOfParticles: 20,
                                                        colors: const [
                                                          Colors.green,
                                                          Colors.blue,
                                                          Colors.pink,
                                                          Colors.orange,
                                                          Colors.purple
                                                        ],
                                                      ),
                                                      Positioned(
                                                        right: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            2,
                                                        left: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            2,
                                                        child: ConfettiWidget(
                                                          confettiController:
                                                              _controllerCenter,
                                                          blastDirectionality:
                                                              BlastDirectionality
                                                                  .explosive,
                                                          shouldLoop: true,
                                                          numberOfParticles: 10,
                                                          colors: const [
                                                            Colors.green,
                                                            Colors.blue,
                                                            Colors.pink,
                                                            Colors.orange,
                                                            Colors.purple
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        }
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
                                        if (_formas[_aleatorio2] != data) {
                                          executar("error");
                                        } else {
                                          executarW("acertou");
                                        }
                                        return _formas[_aleatorio2] == data;
                                      },
                                      onAccept: (data) async {
                                        setState(() {
                                          qtd_forma = qtd_forma + 1;
                                          _isForma2Dropped = true;
                                        });
                                        if (qtd_forma == 3) {
                                          _controllerCenter.play();
                                          _controllerCenter2.play();
                                          await showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Dialog(
                                                child: Stack(
                                                  children: [
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Image.asset(
                                                          'assets/imagens/dino_parab.png',
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.45,
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.5,
                                                        ),
                                                        const Text(
                                                          "Você Conseguiu!!!",
                                                          style: TextStyle(
                                                            fontSize: 20,
                                                          ),
                                                        ),
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            _controllerCenter
                                                                .stop();
                                                            _controllerCenter2
                                                                .stop();
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child: const Text(
                                                              "Fechar"),
                                                        )
                                                      ],
                                                    ),
                                                    ConfettiWidget(
                                                      confettiController:
                                                          _controllerCenter2,
                                                      blastDirectionality:
                                                          BlastDirectionality
                                                              .explosive,
                                                      shouldLoop: true,
                                                      numberOfParticles: 20,
                                                      colors: const [
                                                        Colors.green,
                                                        Colors.blue,
                                                        Colors.pink,
                                                        Colors.orange,
                                                        Colors.purple
                                                      ],
                                                    ),
                                                    Positioned(
                                                      right:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              2,
                                                      left:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              2,
                                                      child: ConfettiWidget(
                                                        confettiController:
                                                            _controllerCenter,
                                                        blastDirectionality:
                                                            BlastDirectionality
                                                                .explosive,
                                                        shouldLoop: true,
                                                        numberOfParticles: 10,
                                                        colors: const [
                                                          Colors.green,
                                                          Colors.blue,
                                                          Colors.pink,
                                                          Colors.orange,
                                                          Colors.purple
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          );
                                        }
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
                                        if (_formas[_aleatorio3] != data) {
                                          executar("error");
                                        } else {
                                          executarW("acertou");
                                        }
                                        return _formas[_aleatorio3] == data;
                                      },
                                      onAccept: (data) async {
                                        setState(
                                          () {
                                            qtd_forma = qtd_forma + 1;
                                            _isForma3Dropped = true;
                                          },
                                        );
                                        if (qtd_forma == 3) {
                                          _controllerCenter.play();
                                          _controllerCenter2.play();
                                          await showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Dialog(
                                                child: Container(
                                                  height: 300,
                                                  child: Stack(
                                                    children: [
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Image.asset(
                                                            'assets/imagens/dino_parab.png',
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.45,
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.5,
                                                          ),
                                                          const Text(
                                                            "Você Conseguiu!!!",
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                            ),
                                                          ),
                                                          ElevatedButton(
                                                            onPressed: () {
                                                              _controllerCenter
                                                                  .stop();
                                                              _controllerCenter2
                                                                  .stop();
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child: const Text(
                                                                "Fechar"),
                                                          )
                                                        ],
                                                      ),
                                                      ConfettiWidget(
                                                        confettiController:
                                                            _controllerCenter2,
                                                        blastDirectionality:
                                                            BlastDirectionality
                                                                .explosive,
                                                        shouldLoop: true,
                                                        numberOfParticles: 20,
                                                        colors: const [
                                                          Colors.green,
                                                          Colors.blue,
                                                          Colors.pink,
                                                          Colors.orange,
                                                          Colors.purple
                                                        ],
                                                      ),
                                                      Positioned(
                                                        right: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            2,
                                                        left: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            2,
                                                        child: ConfettiWidget(
                                                          confettiController:
                                                              _controllerCenter,
                                                          blastDirectionality:
                                                              BlastDirectionality
                                                                  .explosive,
                                                          shouldLoop: true,
                                                          numberOfParticles: 10,
                                                          colors: const [
                                                            Colors.green,
                                                            Colors.blue,
                                                            Colors.pink,
                                                            Colors.orange,
                                                            Colors.purple
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Draggable<String>(
                                    // Data is the value this Draggable stores.
                                    data: 'assets/imagens/circulo.png',
                                    child: Container(
                                      child: Center(
                                        child: Image.asset(
                                          'assets/imagens/circulo.png',
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                        ),
                                      ),
                                    ),
                                    feedback: Container(
                                      child: Center(
                                        child: Image.asset(
                                          'assets/imagens/circulo.png',
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
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
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                        ),
                                      ),
                                    ),
                                    feedback: Container(
                                      child: Center(
                                        child: Image.asset(
                                          'assets/imagens/coracao.png',
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
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
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                        ),
                                      ),
                                    ),
                                    feedback: Container(
                                      child: Center(
                                        child: Image.asset(
                                          'assets/imagens/estrela.png',
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
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
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                        ),
                                      ),
                                    ),
                                    feedback: Container(
                                      child: Center(
                                        child: Image.asset(
                                          'assets/imagens/losango.png',
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
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
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                        ),
                                      ),
                                    ),
                                    feedback: Container(
                                      child: Center(
                                        child: Image.asset(
                                          'assets/imagens/nuvem.png',
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
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
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                        ),
                                      ),
                                    ),
                                    feedback: Container(
                                      child: Center(
                                        child: Image.asset(
                                          'assets/imagens/pentagono.png',
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
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
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                        ),
                                      ),
                                    ),
                                    feedback: Container(
                                      child: Center(
                                        child: Image.asset(
                                          'assets/imagens/quadrado.png',
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                        ),
                                      ),
                                    ),
                                    childWhenDragging: Container(),
                                  ),
                                  Draggable<String>(
                                    // Data is the value this Draggable stores.
                                    data: 'assets/imagens/triangulo.png',
                                    child: Container(
                                      child: Center(
                                        child: Image.asset(
                                          'assets/imagens/triangulo.png',
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                        ),
                                      ),
                                    ),
                                    feedback: Container(
                                      child: Center(
                                        child: Image.asset(
                                          'assets/imagens/triangulo.png',
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
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
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showSnackBarGlobal(BuildContext context, String message) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          textScaleFactor: 2,
        ),
      ),
    );
  }
}
