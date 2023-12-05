import 'package:flutter/material.dart';
import 'package:learn_language/component/numberItem.dart';

import '../Models/numberModel.dart';

class FamilyScreen extends StatelessWidget {
  FamilyScreen({super.key});
  final List<Number> family=[
    Number(image: "assets/images/family_members/family_father.png",
        jpName: "Chichioya",
        enName: "Father",
        sound: "sounds/family_members/father.wav"),
    Number(image: "assets/images/family_members/family_mother.png",
        jpName: "Hahaoya",
        enName: "Mother",
        sound: "sounds/family_members/mother.wav"),
    Number(image: "assets/images/family_members/family_grandfather.png",
        jpName: "Ojisan",
        enName: "Grand Father",
        sound: "sounds/family_members/grand father.wav"),
    Number(image: "assets/images/family_members/family_grandmother.png",
        jpName: "Sobo",
        enName: "Grand Mother",
        sound: "sounds/family_members/grand mother.wav"),
    Number(image: "assets/images/family_members/family_daughter.png",
        jpName: "Musume",
        enName: "Daughter",
        sound: "sounds/family_members/daughter.wav"),
    Number(image: "assets/images/family_members/family_son.png",
        jpName: "Musuko",
        enName: "son",
        sound: "sounds/family_members/son.wav"),
    Number(image: "assets/images/family_members/family_older_brother.png",
        jpName: "Nisan",
        enName: "Old Brother",
        sound: "sounds/family_members/older bother.wav"),
    Number(image: "assets/images/family_members/family_older_sister.png",
        jpName: "Ane",
        enName: "Old Sister",
        sound: "sounds/family_members/older sister.wav"),

    Number(image: "assets/images/family_members/family_younger_brother.png",
        jpName: "Otoiyo",
        enName: "Younger Brother",
        sound: "sounds/family_members/younger brohter.wav"),

    Number(image: "assets/images/family_members/family_younger_sister.png",
        jpName: "Emotyo",
        enName: "Younger Sister",
        sound: "sounds/family_members/younger sister.wav"),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
        title: Text("Family Members",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
        backgroundColor: Colors.black,
        ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.separated(itemBuilder: (context ,int index){
          return NumberItem(number: family[index]);
        },
            separatorBuilder: (context, int index){
            return SizedBox(
              height: 15,
            );
            }
            , itemCount: family.length),
      )
    );
  }
}
