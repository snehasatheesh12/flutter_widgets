import 'package:flutter/material.dart';

class PreferredSizeWidgetExample extends StatelessWidget {
  const PreferredSizeWidgetExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.redAccent,
                Colors.orangeAccent,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: ListTile(
          title: Text("My App"), // Title of the ListTile
          trailing: Icon(Icons.search), // Icon on the right side
          onTap: () {
            // Your onTap logic here
          },
        ),
      ),
      body: Center(
        child: Text("Body Content"), // Example body content
      ),
    );
  }
}


