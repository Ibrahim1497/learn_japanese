import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({required this.text, required this.color, required this.onClick});

  Color? color;
  String? text;
  Function()? onClick;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: size.height*0.41,
        width: size.width*0.41,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25)
        ),
        child: Center(
            child: Text(text!,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),)
        ),
      ),
    );
}
}
