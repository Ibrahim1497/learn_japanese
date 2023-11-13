import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learn_language/Models/numberModel.dart';

class NumberItem extends StatelessWidget {
  NumberItem({super.key, required this.number});
  final Number number;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius:BorderRadius.circular(30)
      ),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              color: Colors.white54,
              child: Image(
                  image: AssetImage(number.image))),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number.jpName,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                number.enName,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: ()async{
                final player=AudioPlayer();
                await player.play(AssetSource(number.sound));
              },
              icon: Icon(Icons.play_arrow,color: Colors.brown[900],size: 35,),),
          )
        ],
      ),
    );
  }
}


