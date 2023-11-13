import 'package:flutter/material.dart';

import '../Models/numberModel.dart';
import '../component/numberItem.dart';

class ColorsScreen extends StatelessWidget {
   ColorsScreen({super.key});
  final List<Number> colors = const [
    Number(
        image: 'assets/images/colors/color_black.png',
        jpName: 'Kuro',
        enName: 'Black',
        sound: 'sounds/colors/black.wav'),
    Number(
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'White',
        sound: 'sounds/colors/white.wav'),
    Number(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'Brown',
        sound: 'sounds/colors/brown.wav'),
    Number(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Dasutiierō',
        enName: 'Dusty Yellow',
        sound: 'sounds/colors/dusty yellow.wav'),
    Number(
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gurē',
        enName: 'Gray',
        sound: 'sounds/colors/gray.wav'),
    Number(
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'Green',
        sound: 'sounds/colors/green.wav'),
    Number(
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'Red',
        sound: 'sounds/colors/red.wav'),
    Number(
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'Yellow',
        sound: 'sounds/colors/yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Colors"),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.separated(itemBuilder: (context ,int index){
          return NumberItem(number: colors[index]);
        },
            separatorBuilder: (context, int index){
              return SizedBox(
                height: 15,
              );
            }
            , itemCount: colors.length),
      ),
    );
  }
}
