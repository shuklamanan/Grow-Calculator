// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:grow_calc/diif_screen/sip.dart';
import 'package:grow_calc/diif_screen/emi.dart';
import 'package:grow_calc/diif_screen/fd.dart';
import 'package:grow_calc/diif_screen/nps.dart';
import 'package:grow_calc/common_tiling.dart';

class HomePage extends StatelessWidget {
  @override
  List<Image> images = [
    Image.asset(
      'assets/images/sip.png',
      width: 70,
      height: 70,
    ),
    Image.asset(
      'assets/images/fd.png',
      width: 70,
      height: 70,
    ),
    Image.asset(
      'assets/images/nps.png',
      width: 70,
      height: 70,
    ),
    Image.asset(
      'assets/images/emi.png',
      width: 70,
      height: 70,
    ),
  ];
  List<Text> texts = const [
    Text(
      'SIP',
      style: TextStyle(
          color: Colors.black, fontSize: 23, fontWeight: FontWeight.w700),
    ),
    Text(
      'FD',
      style: TextStyle(
          color: Colors.black, fontSize: 23, fontWeight: FontWeight.w700),
    ),
    Text(
      'NPS',
      style: TextStyle(
          color: Colors.black, fontSize: 23, fontWeight: FontWeight.w700),
    ),
    Text(
      'EMI',
      style: TextStyle(
          color: Colors.black, fontSize: 23, fontWeight: FontWeight.w700),
    ),
  ];
  List<Text> des = const [
    Text(
      'Calculate how much you need to save or how much you will accumulate with your SIP',
      style: TextStyle(
          color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700),
    ),
    Text(
      'FD',
      style: TextStyle(
          color: Colors.white, fontSize: 23, fontWeight: FontWeight.w700),
    ),
    Text(
      'NPS',
      style: TextStyle(
          color: Colors.white, fontSize: 23, fontWeight: FontWeight.w700),
    ),
    Text(
      'EMI',
      style: TextStyle(
          color: Colors.white, fontSize: 23, fontWeight: FontWeight.w700),
    ),
  ];
  void navigatepages(BuildContext context, int index) {
    final List<Widget> diffscreen = [sip(), fd(), nps(), emi()];

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => diffscreen[index]));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Groww'),
        backgroundColor: Colors.grey[300],
        // shadowColor: Colors.grey[300],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200, crossAxisSpacing: 20, mainAxisSpacing: 30),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              navigatepages(context, index);
            },
            child: common_tile(
                title: texts[index],
                description: const Text(''),
                image: images[index]),
          );
        },
        itemCount: 4,
      ),
    );
  }
}
