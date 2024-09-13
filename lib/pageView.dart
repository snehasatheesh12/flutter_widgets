import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView Example'),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
         Image.asset(
            'assets/images/ab.jpg',
            fit: BoxFit.cover,
          ),         
          Container(
            color: Colors.green,
            child: const Center(
              child: Text(
                'Page 2',
                style: TextStyle(color: Colors.white, fontSize: 24.0),
              ),
            ),
          ),
          Container(
            color: Colors.orange,
            child: const Center(
              child: Text(
                'Page 3',
                style: TextStyle(color: Colors.white, fontSize: 24.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

