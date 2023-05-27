import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import 'globals.dart' as globals;

final _player = AudioPlayer();

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  void executar(String nomeAudio) async {
    await _player.setSource(AssetSource('audios/$nomeAudio.mp3'));
    await _player.play(AssetSource('audios/$nomeAudio.mp3'));
    _player.setReleaseMode(ReleaseMode.loop);
  }

  late AppLifecycleState appLifecycle;

  // ADD THIS FUNCTION WITH A AppLifecycleState PARAMETER
  @override
  didChangeAppLifecycleState(AppLifecycleState state) {
    appLifecycle = state;
    setState(() {});

    if (state == AppLifecycleState.paused) {
      // IF YOUT APP IS IN BACKGROUND...
      // YOU CAN ADDED THE ACTION HERE
      _player.pause();
    }
    if (state == AppLifecycleState.resumed) {
      _player.resume();
    }
  }

  // CREATE INITSTATE AND DISPOSE METHODS
  @override
  initState() {
    super.initState();
    executar('musica_bg');

    WidgetsBinding.instance.addObserver(this);
  }

  @override
  dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    var hei = MediaQuery.of(context).size.height - padding.top - padding.bottom;
    var wid = MediaQuery.of(context).size.width - padding.left - padding.right;

    // if (_player.state == PlayerState.completed ||
    //     _player.state == PlayerState.paused ||
    //     _player.state == PlayerState.stopped ||
    //     _player.state != PlayerState.playing) {
    //   executar('musica_bg');
    // }

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

    return WillPopScope(
        child: SafeArea(
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
                  childAspectRatio:
                      MediaQuery.of(context).size.aspectRatio * 1.3,
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
                              width: wid * 0.25,
                              height: hei * 0.25,
                              scale: 1,
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
                              width: wid * 0.25,
                              height: hei * 0.25,
                              scale: 1,
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
                              width: wid * 0.25,
                              height: hei * 0.25,
                              scale: 1,
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
                              width: wid * 0.25,
                              height: hei * 0.25,
                              scale: 1,
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
        ),
        onWillPop: () async {
          Navigator.pushNamed(context, '/');
          return true;
        });
  }
}
