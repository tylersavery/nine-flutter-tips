import 'package:flutter/material.dart';
import 'package:flutter_tips/chapter_explanation.dart';

class Chapter6 extends StatelessWidget {
  const Chapter6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chapter 6"),
      ),
      body: ChapterExplanation(
        body: "Make Files are super helpful to run common commands (and not forget them!)",
        url: "https://www.youtube.com/watch?v=IdtramLtYVA&t=1526s",
      ),
    );
  }
}
