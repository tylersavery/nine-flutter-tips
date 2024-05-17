import 'package:flutter/material.dart';
import 'package:flutter_tips/chapter_explanation.dart';

class Chapter2 extends StatelessWidget {
  const Chapter2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chapter 2"),
      ),
      body: ChapterExplanation(
        body: "Export commonly used files together to make imports more clean",
        url: "https://www.youtube.com/watch?v=IdtramLtYVA&t=382s",
      ),
    );
  }
}
