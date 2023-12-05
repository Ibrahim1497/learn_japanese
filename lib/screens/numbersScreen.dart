import 'package:flutter/material.dart';
import 'package:learn_language/component/numberItem.dart';

import '../Models/numberModel.dart';

class NumberScreen extends StatelessWidget {
  NumberScreen({super.key});
  final List<Number> numbers = const [
    Number(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'ni',
        enName: 'Tow',
        sound: 'sounds/numbers/number_two_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'san',
        enName: 'Three',
        sound: 'sounds/numbers/number_three_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'shi',
        enName: 'Four',
        sound: 'sounds/numbers/number_four_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'go',
        enName: 'Five',
        sound: 'sounds/numbers/number_five_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'roku',
        enName: 'Six',
        sound: 'sounds/numbers/number_six_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'sebun',
        enName: 'Seven',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'Eight',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'kyu',
        enName: 'Nine',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'ju',
        enName: 'Ten',
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Numbers ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.separated(
          itemCount: numbers.length,
          itemBuilder: (BuildContext context, int index) {
            return NumberItem(
              number: numbers[index],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 15,
            );
          },
        ),
      ),
    );
  }
}
