import 'package:flutter/material.dart';

class common_tile extends StatelessWidget {
  Text title, description;
  Image image;
  common_tile(
      {required this.title, required this.description, required this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 8, right: 8),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 230, 230, 230),
          borderRadius: BorderRadius.circular(20),
          // border: Border.all(color: const Color.fromARGB(255, 59, 58, 58)),
          boxShadow: const [
            BoxShadow(
                offset: Offset(5, 5),
                blurRadius: 8,
                color: Color.fromARGB(255, 138, 138, 138),
                spreadRadius: 3),
            BoxShadow(
              color: Color.fromARGB(255, 255, 255, 255),
              offset: Offset(-5, -5),
              blurRadius: 8,
            ),
          ],
        ),
        child: Stack(
          children: <Widget>[
            Positioned(left: 10, top: 10, child: title),
            Positioned(left: 10, top: 35, child: description),
            Positioned(right: 3, bottom: 8, child: image),
          ],
        ),
      ),
    );
  }
}
