import 'package:flutter/material.dart';
import '../device_utils/device_utils.dart';

class Chapter7 extends StatelessWidget {
  const Chapter7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chapter 7"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          DeviceUtils().updateDateTime();
        },
        child: Icon(Icons.alarm),
      ),
    );
  }
}
