import 'package:flutter/material.dart';
import 'package:grow_calc/diif_screen/about_cal.dart';

class fd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: const Text('FD'),
      ),
      body: about_calc('FD'),
    );
  }
}
