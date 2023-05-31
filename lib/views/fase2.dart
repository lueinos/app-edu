// import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'globals.dart' as globals;

class Fase2 extends StatefulWidget {
  const Fase2({Key? key}) : super(key: key);

  @override
  _Fase2State createState() => _Fase2State();
}

final _player = AudioPlayer();

ConfettiController _controllerCenter =
    ConfettiController(duration: const Duration(seconds: 10));
ConfettiController _controllerCenter2 =
    ConfettiController(duration: const Duration(seconds: 10));

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

class _Fase2State extends State<Fase2> {
  final List<String> _amarelos = ["A1", "A2", "A3", "A4", "A5"];
  final bool _isAmareloDropped = false;
  bool _isAmarelo1Dropped = false;
  bool _isAmarelo2Dropped = false;
  bool _isAmarelo3Dropped = false;
  bool _isAmarelo4Dropped = false;
  bool _isAmarelo5Dropped = false;

  final List<String> _azuls = ["B1", "B2", "B3", "B4", "B5"];
  final bool _isAzulDropped = false;
  bool _isAzul1Dropped = false;
  bool _isAzul2Dropped = false;
  bool _isAzul3Dropped = false;
  bool _isAzul4Dropped = false;
  bool _isAzul5Dropped = false;

  final List<String> _vermelhos = ["V1", "V2", "V3", "V4", "V5"];
  final bool _isVermelhoDropped = false;
  bool _isVermelho1Dropped = false;
  bool _isVermelho2Dropped = false;
  bool _isVermelho3Dropped = false;
  bool _isVermelho4Dropped = false;
  bool _isVermelho5Dropped = false;

  int qtdBolinhas = 0;

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
        backgroundColor: const Color(0xFFd3e6ed),
        appBar: AppBar(
            title: const Text("Fase 2", style: TextStyle(color: Colors.black)),
            backgroundColor: const Color(0xFFd3e6ed),
            flexibleSpace: GestureDetector(
                onTap: () {
                  if (qtdBolinhas == 15) {
                    if (globals.fase < 3) {
                      globals.fase = 3;
                    }
                    Navigator.pushNamed(context, "/home");
                  }
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
        body: Stack(children: <Widget>[
          Container(
            // margin: const EdgeInsets.all(10.0),
            // padding: const EdgeInsets.all(3.0),
            decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/imagens/porco-fundo.jpg"),
                    opacity: .3,
                    fit: BoxFit.cover,
                  ),
                ),
            child: Column(children: <Widget>[
              Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SingleChildScrollView(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Visibility(
                              visible: !_isAmarelo1Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _amarelos[0],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_amarelo.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_amarelo.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isVermelho2Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _vermelhos[1],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_vermelho.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_vermelho.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isVermelho3Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _vermelhos[2],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_vermelho.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_vermelho.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isVermelho4Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _vermelhos[3],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_vermelho.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_vermelho.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isVermelho5Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _vermelhos[4],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_vermelho.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_vermelho.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isAzul1Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _azuls[0],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_azul.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_azul.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isAzul2Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _azuls[1],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_azul.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_azul.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isAzul3Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _azuls[2],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_azul.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_azul.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
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
                              visible: !_isAzul4Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _azuls[3],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_azul.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_azul.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isAzul5Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _azuls[4],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_azul.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_azul.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isAmarelo2Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _amarelos[1],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_amarelo.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_amarelo.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isVermelho1Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _vermelhos[0],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_vermelho.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_vermelho.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isAmarelo3Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _amarelos[2],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_amarelo.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_amarelo.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isAmarelo4Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _amarelos[3],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_amarelo.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_amarelo.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                childWhenDragging: Container(),
                              ),
                            ),
                            Visibility(
                              visible: !_isAmarelo5Dropped,
                              child: Draggable<String>(
                                // Data is the value this Draggable stores.
                                data: _amarelos[4],
                                child: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_amarelo.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ),
                                ),
                                feedback: Container(
                                  child: Center(
                                    child: Image.asset(
                                      'assets/imagens/circulo_amarelo.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
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
                      top: MediaQuery.of(context).size.height * 0.2),
                  child: Align(
                      alignment: Alignment.bottomCenter,
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
                                      _isAzulDropped
                                          ? 'assets/imagens/caixa_azul.png'
                                          : 'assets/imagens/caixa_azul.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.3,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                    ),
                                  );
                                },
                                onWillAccept: (data) {
                                  if (!_azuls.contains(data)) {
                                    executar("error");
                                  } else {
                                    executarW("acertou");
                                  }
                                  return _azuls.contains(data);
                                  //return data == _azul;
                                },
                                onAccept: (data) async {
                                  setState(
                                    () {
                                      if (_azuls.indexOf(data) == 0) {
                                        qtdBolinhas = qtdBolinhas + 1;
                                        _isAzul1Dropped = true;
                                      } else if (_azuls.indexOf(data) == 1) {
                                        qtdBolinhas = qtdBolinhas + 1;
                                        _isAzul2Dropped = true;
                                      } else if (_azuls.indexOf(data) == 2) {
                                        qtdBolinhas = qtdBolinhas + 1;
                                        _isAzul3Dropped = true;
                                      } else if (_azuls.indexOf(data) == 3) {
                                        qtdBolinhas = qtdBolinhas + 1;
                                        _isAzul4Dropped = true;
                                      } else if (_azuls.indexOf(data) == 4) {
                                        qtdBolinhas = qtdBolinhas + 1;
                                        _isAzul5Dropped = true;
                                      }
                                    },
                                  );
                                  if (qtdBolinhas == 15) {
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
                                                      'assets/imagens/porco_parab.png',
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
                                      _isVermelhoDropped
                                          ? 'assets/imagens/caixa_vermelha.png'
                                          : 'assets/imagens/caixa_vermelha.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.3,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                    ),
                                  );
                                },
                                onWillAccept: (data) {
                                  if (!_vermelhos.contains(data)) {
                                    executar("error");
                                  } else {
                                    executarW("acertou");
                                  }
                                  //return data == _vermelho;
                                  return _vermelhos.contains(data);
                                },
                                onAccept: (data) async {
                                  setState(() {
                                    if (_vermelhos.indexOf(data) == 0) {
                                      qtdBolinhas = qtdBolinhas + 1;
                                      _isVermelho1Dropped = true;
                                    } else if (_vermelhos.indexOf(data) == 1) {
                                      qtdBolinhas = qtdBolinhas + 1;
                                      _isVermelho2Dropped = true;
                                    } else if (_vermelhos.indexOf(data) == 2) {
                                      qtdBolinhas = qtdBolinhas + 1;
                                      _isVermelho3Dropped = true;
                                    } else if (_vermelhos.indexOf(data) == 3) {
                                      qtdBolinhas = qtdBolinhas + 1;
                                      _isVermelho4Dropped = true;
                                    } else if (_vermelhos.indexOf(data) == 4) {
                                      qtdBolinhas = qtdBolinhas + 1;
                                      _isVermelho5Dropped = true;
                                    }
                                  });
                                  if (qtdBolinhas == 15) {
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
                                                      'assets/imagens/porco_parab.png',
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
                                      _isAmareloDropped
                                          ? 'assets/imagens/caixa_amarela.png'
                                          : 'assets/imagens/caixa_amarela.png',
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.3,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                    ),
                                  );
                                },
                                onWillAccept: (data) {
                                  if (!_amarelos.contains(data)) {
                                    executar("error");
                                  } else {
                                    executarW("acertou");
                                  }
                                  return _amarelos.contains(data);
                                  //return data == _amarelo;
                                },
                                onAccept: (data) async {
                                  setState(
                                    () {
                                      if (_amarelos.indexOf(data) == 0) {
                                        qtdBolinhas = qtdBolinhas + 1;
                                        _isAmarelo1Dropped = true;
                                      } else if (_amarelos.indexOf(data) == 1) {
                                        qtdBolinhas = qtdBolinhas + 1;
                                        _isAmarelo2Dropped = true;
                                      } else if (_amarelos.indexOf(data) == 2) {
                                        qtdBolinhas = qtdBolinhas + 1;
                                        _isAmarelo3Dropped = true;
                                      } else if (_amarelos.indexOf(data) == 3) {
                                        qtdBolinhas = qtdBolinhas + 1;
                                        _isAmarelo4Dropped = true;
                                      } else if (_amarelos.indexOf(data) == 4) {
                                        qtdBolinhas = qtdBolinhas + 1;
                                        _isAmarelo5Dropped = true;
                                      }
                                    },
                                  );
                                  if (qtdBolinhas == 15) {
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
                                                      'assets/imagens/porco_parab.png',
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
