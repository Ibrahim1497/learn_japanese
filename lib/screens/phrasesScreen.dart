import 'package:flutter/material.dart';
import 'package:learn_language/component/phrase.dart';

import '../Models/phrasesModel.dart';
class PhrasesScreen extends StatelessWidget {
   PhrasesScreen({super.key});
  List<Phrases>? phrase= const[
    Phrases(
        jpName: 'Anata no namae wa nanidesu ka?',
        enName: 'Whats is your name',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    Phrases(
        jpName: 'Nan-saidesu ka?',
        enName: 'How old are you',
        sound: 'sounds/phrases/how old are you.m4a'),
    Phrases(jpName: 'Ypo wa dōdesu ka ?', enName: 'How are you',
        sound: 'sounds/phrases/how are you.m4a'),
    Phrases(jpName: 'Watashi wa kazoku o aishiteimasu',
        enName: 'I love my family',
        sound: 'sounds/phrases/I love my family.m4a'),
    Phrases(jpName: 'Puroguramingu ga daisukidesu',
        enName: 'I love programming',
        sound: 'sounds/phrases/i_love_programming.wav'),
    Phrases(jpName: 'Puroguramingu wa kantandesu',
        enName: 'Programming is easy',
        sound: 'sounds/phrases/programming_is_easy.wav'),
    Phrases(jpName: 'Watashi no hoppī wa sakkādesu',
        enName: 'My hoppy is football',
        sound: 'sounds/phrases/my hoppy is football.m4a'),
    Phrases(jpName: 'Hai, ikimasu',
        enName: 'Yes i am comming',
        sound: 'sounds/phrases/yes_im_coming.wav'),
    Phrases(jpName: 'Doko ni iku no',
        enName: 'Where are you going',
        sound: 'sounds/phrases/where_are_you_going.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Phrases"),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 1),
        child: ListView.separated(itemBuilder: (context, i){
          return Phrase(phrase: phrase![i],);
        },
            separatorBuilder: (context, i){
          return SizedBox(
            height: 15,
          );
            },
            itemCount: phrase!.length),
      ),
    );
  }
}
