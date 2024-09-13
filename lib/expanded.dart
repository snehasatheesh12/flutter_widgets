import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        flex: 2,
        child: Column(children: [
          Container(
            height: 200,
            color: Colors.deepPurple,
          ),
           Expanded(
            flex:1,
             child: Container(
              height: 200,
              color: Colors.pink,
                     ),
           ),
        ],),
      )
    );
  }
}
