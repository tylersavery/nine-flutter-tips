import 'package:flutter/material.dart';
import 'package:flutter_tips/chapter_explanation.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Chapter8 extends StatelessWidget {
  const Chapter8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chapter 8"),
      ),
      body: ChapterExplanation(
        body: "dart-import: a cool extension for organization your imports.",
        url: "https://www.youtube.com/watch?v=IdtramLtYVA&t=2207s",
        trailing: TextButton(
          onPressed: () {
            launchUrlString("https://marketplace.visualstudio.com/items?itemName=luanpotter.dart-import");
          },
          child: Text("Open Extension"),
        ),
      ),
    );
  }
}
