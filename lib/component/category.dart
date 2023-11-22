import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category(
      {required this.text,
      required this.color,
      required this.onClick,
      required this.image});

  String? image;
  Color? color;
  String? text;
  Function()? onClick;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: size.height * 0.41,
        width: size.width * 0.41,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(image: AssetImage(image!), fit: BoxFit.fill),
        ),
        child: Center(
            child: Text(
          text!,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 35, color: color,backgroundColor: Colors.yellow[300]),
        )),
      ),
    );
  }
}
