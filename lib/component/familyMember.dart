import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learn_language/Models/numberModel.dart';

class FamelyItem extends StatelessWidget {
  const FamelyItem({super.key, required this.number});
  final Number number;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 15),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius:BorderRadius.circular(30)
      ),      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              color: Colors.white54,
              child: Image(image: AssetImage(number.image))),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number.jpName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(number.enName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ],
          ),
          IconButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(AssetSource(number.sound));
              },
              icon: Icon(
                Icons.play_arrow,
                size: 40,
              ))
        ],
      ),
    );
  }
}
