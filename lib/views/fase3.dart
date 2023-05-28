// import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'globals.dart' as globals;

class Fase3 extends StatefulWidget {
  const Fase3({Key? key}) : super(key: key);

  @override
  _Fase3State createState() => _Fase3State();
}

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

final _player = AudioPlayer();

ConfettiController _controllerCenter =
    ConfettiController(duration: const Duration(seconds: 10));
ConfettiController _controllerCenter2 =
    ConfettiController(duration: const Duration(seconds: 10));

class _Fase3State extends State<Fase3> {
  final List<String> _papels = ["P1", "P2", "P3"];
  final bool _isPapelDropped = false;
  bool _isPapel1Dropped = false;
  bool _isPapel2Dropped = false;
  bool _isPapel3Dropped = false;

  final List<String> _plasticos = ["PL1", "PL2"];
  final bool _isPlasticoDropped = false;
  bool _isPlastico1Dropped = false;
  bool _isPlastico2Dropped = false;

  final List<String> _vidros = ["V1", "V2", "V3"];
  final bool _isVidroDropped = false;
  bool _isVidro1Dropped = false;
  bool _isVidro2Dropped = false;
  bool _isVidro3Dropped = false;

  final List<String> _metals = ["M1", "M2", "M3"];
  final bool _isMetalDropped = false;
  bool _isMetal1Dropped = false;
  bool _isMetal2Dropped = false;
  bool _isMetal3Dropped = false;

  final List<String> _organicos = ["O1", "O2", "O3"];
  final bool _isOrganicoDropped = false;
  bool _isOrganico1Dropped = false;
  bool _isOrganico2Dropped = false;
  bool _isOrganico3Dropped = false;

  int qtdLixo = 0;

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
      child: Scaffold(
        backgroundColor: const Color(0xFFFFCB99),
        appBar: AppBar(
            title: const Text("Fase 3", style: TextStyle(color: Colors.black)),
            backgroundColor: const Color(0xFFFFCB99),
            flexibleSpace: GestureDetector(
                onTap: () {
                  if (qtdLixo == 14) {
                    if (globals.fase < 4) {
                      globals.fase = 4;
                    }
                    Navigator.pushNamed(context, "/home");
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      "assets/imagens/seta_fase_3.png",
                      height: 50,
                      width: 50,
                    ),
                  ),
                ))),
        body: Stack(children: <Widget>[
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(3.0),
            //alignment: Alignment.center,
            child: Column(children: <Widget>[
              Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SingleChildScrollView(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Visibility(
                              visible: !_isOrganico1Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _organicos[0],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/organico_1.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/organico_1.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isPapel1Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _papels[0],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/papel_1.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/papel_1.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isPlastico1Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _plasticos[0],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/plastico_1.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/plastico_1.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isMetal1Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _metals[0],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/metal_1.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/metal_1.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isOrganico2Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _organicos[1],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/organico_2.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/organico_2.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isVidro1Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _vidros[0],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/vidro_1.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/vidro_1.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isMetal2Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _metals[1],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/metal_2.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/metal_2.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isVidro2Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _vidros[1],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/vidro_2.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/vidro_2.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SingleChildScrollView(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Visibility(
                              visible: !_isPapel2Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _papels[1],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/papel_2.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/papel_2.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isPapel3Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _papels[2],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/papel_3.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/papel_3.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isPlastico2Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _plasticos[1],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/plastico_2.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/plastico_2.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isVidro3Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _vidros[2],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/vidro_3.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/vidro_3.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isOrganico3Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _organicos[2],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/organico_3.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/organico_3.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isMetal3Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _metals[2],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/metal_3.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/metal_3.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.1),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(children: [
                              DragTarget<String>(
                                builder: (
                                  BuildContext context,
                                  List<dynamic> accepted,
                                  List<dynamic> rejected,
                                ) {
                                  return Container(
                                    child: Image.asset(
                                      _isPapelDropped
                                          ? 'assets/imagens/lixeira_papel.png'
                                          : 'assets/imagens/lixeira_papel.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.3,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  );
                                },
                                onWillAccept: (data) {
                                  if (!_papels.contains(data)) {
                                    executar("error");
                                  } else {
                                    executarW("acertou");
                                  }
                                  return _papels.contains(data);
                                  //return data == _azul;
                                },
                                onAccept: (data) async {
                                  setState(() {
                                    if (_papels.indexOf(data) == 0) {
                                      qtdLixo = qtdLixo + 1;
                                      _isPapel1Dropped = true;
                                    } else if (_papels.indexOf(data) == 1) {
                                      qtdLixo = qtdLixo + 1;
                                      _isPapel2Dropped = true;
                                    } else if (_papels.indexOf(data) == 2) {
                                      qtdLixo = qtdLixo + 1;
                                      _isPapel3Dropped = true;
                                    }
                                  });
                                  if (qtdLixo == 14) {
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
                                                      'assets/imagens/guaxinim_parab.png',
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.45,
                                                      width:
                                                          MediaQuery.of(context)
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
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child:
                                                          const Text("Fechar"),
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
                                                  right: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      2,
                                                  left: MediaQuery.of(context)
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
                                      _isPlasticoDropped
                                          ? 'assets/imagens/lixeira_plastico.png'
                                          : 'assets/imagens/lixeira_plastico.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.3,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  );
                                },
                                onWillAccept: (data) {
                                  if (!_plasticos.contains(data)) {
                                    executar("error");
                                  } else {
                                    executarW("acertou");
                                  }
                                  //return data == _vermelho;
                                  return _plasticos.contains(data);
                                },
                                onAccept: (data) async {
                                  setState(() {
                                    if (_plasticos.indexOf(data) == 0) {
                                      qtdLixo = qtdLixo + 1;
                                      _isPlastico1Dropped = true;
                                    } else if (_plasticos.indexOf(data) == 1) {
                                      qtdLixo = qtdLixo + 1;
                                      _isPlastico2Dropped = true;
                                    }
                                  });
                                  if (qtdLixo == 14) {
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
                                                      'assets/imagens/guaxinim_parab.png',
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.45,
                                                      width:
                                                          MediaQuery.of(context)
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
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child:
                                                          const Text("Fechar"),
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
                                                  right: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      2,
                                                  left: MediaQuery.of(context)
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
                                      _isVidroDropped
                                          ? 'assets/imagens/lixeira_vidro.png'
                                          : 'assets/imagens/lixeira_vidro.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.3,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  );
                                },
                                onWillAccept: (data) {
                                  if (!_vidros.contains(data)) {
                                    executar("error");
                                  } else {
                                    executarW("acertou");
                                  }
                                  return _vidros.contains(data);
                                  //return data == _amarelo;
                                },
                                onAccept: (data) async {
                                  setState(() {
                                    if (_vidros.indexOf(data) == 0) {
                                      qtdLixo = qtdLixo + 1;
                                      _isVidro1Dropped = true;
                                    } else if (_vidros.indexOf(data) == 1) {
                                      qtdLixo = qtdLixo + 1;
                                      _isVidro2Dropped = true;
                                    } else if (_vidros.indexOf(data) == 2) {
                                      qtdLixo = qtdLixo + 1;
                                      _isVidro3Dropped = true;
                                    }
                                  });
                                  if (qtdLixo == 14) {
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
                                                      'assets/imagens/guaxinim_parab.png',
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.45,
                                                      width:
                                                          MediaQuery.of(context)
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
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child:
                                                          const Text("Fechar"),
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
                                                  right: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      2,
                                                  left: MediaQuery.of(context)
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
                                      _isMetalDropped
                                          ? 'assets/imagens/lixeira_metal.png'
                                          : 'assets/imagens/lixeira_metal.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.3,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  );
                                },
                                onWillAccept: (data) {
                                  if (!_metals.contains(data)) {
                                    executar("error");
                                  } else {
                                    executarW("acertou");
                                  }
                                  return _metals.contains(data);
                                  //return data == _amarelo;
                                },
                                onAccept: (data) async {
                                  setState(() {
                                    if (_metals.indexOf(data) == 0) {
                                      qtdLixo = qtdLixo + 1;
                                      _isMetal1Dropped = true;
                                    } else if (_metals.indexOf(data) == 1) {
                                      qtdLixo = qtdLixo + 1;
                                      _isMetal2Dropped = true;
                                    } else if (_metals.indexOf(data) == 2) {
                                      qtdLixo = qtdLixo + 1;
                                      _isMetal3Dropped = true;
                                    }
                                  });
                                  if (qtdLixo == 14) {
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
                                                      'assets/imagens/guaxinim_parab.png',
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.45,
                                                      width:
                                                          MediaQuery.of(context)
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
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child:
                                                          const Text("Fechar"),
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
                                                  right: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      2,
                                                  left: MediaQuery.of(context)
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
                                      _isOrganicoDropped
                                          ? 'assets/imagens/lixeira_organicos.png'
                                          : 'assets/imagens/lixeira_organicos.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.3,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  );
                                },
                                onWillAccept: (data) {
                                  if (!_organicos.contains(data)) {
                                    executar("error");
                                  } else {
                                    executarW("acertou");
                                  }
                                  return _organicos.contains(data);
                                  //return data == _amarelo;
                                },
                                onAccept: (data) async {
                                  setState(() {
                                    if (_organicos.indexOf(data) == 0) {
                                      qtdLixo = qtdLixo + 1;
                                      _isOrganico1Dropped = true;
                                    } else if (_organicos.indexOf(data) == 1) {
                                      qtdLixo = qtdLixo + 1;
                                      _isOrganico2Dropped = true;
                                    } else if (_organicos.indexOf(data) == 2) {
                                      qtdLixo = qtdLixo + 1;
                                      _isOrganico3Dropped = true;
                                    }
                                  });
                                  if (qtdLixo == 14) {
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
                                                      'assets/imagens/guaxinim_parab.png',
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.45,
                                                      width:
                                                          MediaQuery.of(context)
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
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child:
                                                          const Text("Fechar"),
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
                                                  right: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      2,
                                                  left: MediaQuery.of(context)
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
                            ]),
                          ]))),
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
