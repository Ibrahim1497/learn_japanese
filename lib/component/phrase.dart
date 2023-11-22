import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learn_language/Models/phrasesModel.dart';
class Phrase extends StatelessWidget {
  const Phrase({super.key, required this.phrase});
  final Phrases phrase;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 15,left: 15),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius:BorderRadius.circular(30)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                phrase.jpName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
              SizedBox(
                height: 10,
              ),
              Text(phrase.enName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21)),
            ],
          ),),
          IconButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(AssetSource(phrase.sound));
              },
              icon: Icon(
                Icons.play_arrow,
                size: 40,
              ))
        ],
      ),
    );;
  }
}
