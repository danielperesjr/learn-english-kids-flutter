import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Animals extends StatefulWidget {
  const Animals({Key? key}) : super(key: key);

  @override
  State<Animals> createState() => _AnimalsState();
}

class _AnimalsState extends State<Animals> {

  AudioPlayer audioPlayer = AudioPlayer();

  void playAudio(String audioName) async {
    await audioPlayer.play(
      AssetSource("audios/$audioName.mp3"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: [
        GestureDetector(
          onTap: () => playAudio("cao"),
          child: Image.asset("assets/images/cao.png"),
        ),
        GestureDetector(
          onTap: () => playAudio("gato"),
          child: Image.asset("assets/images/gato.png"),
        ),
        GestureDetector(
          onTap: () => playAudio("leao"),
          child: Image.asset("assets/images/leao.png"),
        ),
        GestureDetector(
          onTap: () => playAudio("macaco"),
          child: Image.asset("assets/images/macaco.png"),
        ),
        GestureDetector(
          onTap: () => playAudio("ovelha"),
          child: Image.asset("assets/images/ovelha.png"),
        ),
        GestureDetector(
          onTap: () => playAudio("vaca"),
          child: Image.asset("assets/images/vaca.png"),
        ),
      ],
    );
  }
}
