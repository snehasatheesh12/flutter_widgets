import 'package:flutter/material.dart';

class MaterialBannerExample extends StatelessWidget {
  const MaterialBannerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Banner Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showMaterialBanner(
              MaterialBanner(
                padding: const EdgeInsets.all(20),
                content: const Text("Subscribe"),
                leading: const Icon(Icons.notifications_active_outlined),
                elevation: 0,
                backgroundColor: Colors.purple,
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                    },
                    child: const Text('Dismiss'),
                  ),
                ],
              ),
            );
          },
          child: const Text('Open Material Banner'),
        ),
      ),
    );
  }
}
