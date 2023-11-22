import 'package:flutter/material.dart';
import 'package:learn_language/component/category.dart';
import 'package:learn_language/screens/colorsScreen.dart';
import 'package:learn_language/screens/familyMemberScreen.dart';
import 'package:learn_language/screens/phrasesScreen.dart';

import 'numbersScreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text(
            "Toku",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Category(
                    image: "assets/image/Numbers.png",
                    text: "Numbers",
                    color: Color(0xFFffffff),
                    onClick: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NumberScreen()));
                    },
                  ),
                  Category(
                    image: "assets/image/group-of-family-members-free-vector.jpg",
                    text: "Family Members",
                    color: Color(0xFF00000b),
                    onClick: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FamilyScreen()));
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Category(
                    image: "assets/image/file-20170918-8245-fvelv2.webp",
                    text: "Colors",
                    color: Color(0xFF00000b),
                    onClick: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ColorsScreen()));
                    },
                  ),
                  Category(
                    image: "assets/image/8.png",
                    text: "Phrases",
                    color: Color(0xff002156),
                    onClick: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PhrasesScreen()));
                    },
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
