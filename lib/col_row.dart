import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColRow extends StatelessWidget {
  const ColRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Column(
          children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.deepPurple,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.yellow,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.orange,
          ),
        ],),
      )
    );
  }
}