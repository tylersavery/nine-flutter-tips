import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../device_utils/device_utils.dart';

class Chapter7 extends StatelessWidget {
  const Chapter7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chapter 7"),
        actions: [
          IconButton(
            onPressed: () {
              launchUrlString("https://www.youtube.com/watch?v=IdtramLtYVA&t=1644s");
            },
            icon: Icon(Icons.open_in_new),
          )
        ],
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
