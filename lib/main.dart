import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
// This Project is so simple its my First App To Learn Flutter and how Dart And Flutter Works
// Instagram : sepehremune  /  Email : theseyedwork@gmail.com
void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return getApplication();
  }

  Widget getApplication() {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: SafeArea(
          child: DecoratedBox(
            position: DecorationPosition.background,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/drum.png'),
                // fit: BoxFit.scaleDown,
              ),
            ),
            child: getBody(),
          ),
        ),
      ),
    );
  }

  Widget getBody() {
    return Column(
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound("c1.wav");
                  },
                  child: Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound("c2.wav");
                  },
                  child: Text(""),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound("h1.wav");
                  },
                  child: Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound("h2.wav");
                  },
                  child: Text(""),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound("k1.wav");
                  },
                  child: Text(""),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound("k2.wav");
                  },
                  child: Text(""),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  playSound(String sound) {
    var player = AudioCache();
    player.play(sound);
  }
}
