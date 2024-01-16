import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class FDCalc extends StatefulWidget {
  @override
  State<FDCalc> createState() => _FDCalcState();
}

class _FDCalcState extends State<FDCalc> {
  TextEditingController ctrl1 = TextEditingController();
  TextEditingController ctrl2 = TextEditingController();
  TextEditingController ctrl3 = TextEditingController();
  double convert = 0;
  double m = 0, p = 0, n = 0, i = 0, j = 0;
  // final snackbar;
  bool f(TextEditingController c1, TextEditingController c2,
      TextEditingController c3) {
    if (c1.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: const Duration(seconds: 2),
          dismissDirection: DismissDirection.down,
          behavior: SnackBarBehavior.floating,
          width: 250,
          padding: const EdgeInsets.all(10),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13.0),
          ),
          content: const Text(
            'Total Investment is empty',
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 15),
            textAlign: TextAlign.center,
          ),
        ),
      );
      return false;
    }
    if (c2.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: const Duration(seconds: 2),
          dismissDirection: DismissDirection.down,
          behavior: SnackBarBehavior.floating,
          width: 250,
          padding: const EdgeInsets.all(10),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13.0),
          ),
          content: const Text(
            'return rate is empty',
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 15),
            textAlign: TextAlign.center,
          ),
        ),
      );
      return false;
    }
    if (c3.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: const Duration(seconds: 2),
          dismissDirection: DismissDirection.down,
          behavior: SnackBarBehavior.floating,
          width: 250,
          padding: const EdgeInsets.all(10),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13.0),
          ),
          content: const Text(
            'Time period is empty',
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 15),
            textAlign: TextAlign.center,
          ),
        ),
      );
      return false;
    }
    p = double.parse(c1.text.toString().trim());
    i = double.parse(c2.text.toString().trim());
    n = double.parse(c3.text.toString().trim());

    m = p + (p * i * n / 100);
    j = p + p * (pow(1 + i / 100, n) - 1);
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          TextFormField(
            controller: ctrl1,
            decoration: const InputDecoration(
              label: Text(
                'Total Investment(Rs.)',
                style: TextStyle(fontSize: 15),
              ),
              border: OutlineInputBorder(),
              hintText: '10000 Rs',
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 22,
          ),
          TextFormField(
            controller: ctrl2,
            decoration: const InputDecoration(
              label: Text(
                'Expected return rate(%)',
                style: TextStyle(fontSize: 15),
              ),
              border: OutlineInputBorder(),
              hintText: '12%',
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 22,
          ),
          TextFormField(
            controller: ctrl3,
            decoration: const InputDecoration(
              label: Text(
                'Time Period(Year)',
                style: TextStyle(fontSize: 15),
              ),
              border: OutlineInputBorder(),
              hintText: '10 Yr',
            ),
            keyboardType: TextInputType.number,
          ),
          // f(ctrl1,ctrl2,ctrl3),
          SizedBox(
            height: 22,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  bool ans = f(ctrl1, ctrl2, ctrl3);
                });
              },
              child: Text(
                'Calculate',
              )),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Center(
              child: Container(
                child: Text(
                  '${m.toStringAsFixed(2)} by Simple Interest \n${j.toStringAsFixed(2)} by Compound Interest',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
