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
                    text: "Numbers",
                    color: Color(0xff1a83b3),
                    onClick: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NumberScreen()));
                    },
                  ),
                  Category(
                    text: "Family Members",
                    color: Color(0xFFfde65a),
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
                    text: "Colors",
                    color: Color(0xFFf1304b),
                    onClick: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ColorsScreen()));
                    },
                  ),
                  Category(
                    text: "Phrases",
                    color: Color(0xf8452156),
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
