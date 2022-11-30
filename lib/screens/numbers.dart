import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Numbers extends StatefulWidget {
  const Numbers({Key? key}) : super(key: key);

  @override
  State<Numbers> createState() => _NumbersState();
}

class _NumbersState extends State<Numbers> {

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
          onTap: () => playAudio("1"),
          child: Image.asset("assets/images/1.png"),
        ),
        GestureDetector(
          onTap: () => playAudio("2"),
          child: Image.asset("assets/images/2.png"),
        ),
        GestureDetector(
          onTap: () => playAudio("3"),
          child: Image.asset("assets/images/3.png"),
        ),
        GestureDetector(
          onTap: () => playAudio("4"),
          child: Image.asset("assets/images/4.png"),
        ),
        GestureDetector(
          onTap: () => playAudio("5"),
          child: Image.asset("assets/images/5.png"),
        ),
        GestureDetector(
          onTap: () => playAudio("6"),
          child: Image.asset("assets/images/6.png"),
        ),
      ],
    );
  }
}
