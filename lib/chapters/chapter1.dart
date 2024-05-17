import 'package:flutter/material.dart';
import 'package:flutter_tips/chapter_explanation.dart';

class Chapter1 extends StatelessWidget {
  const Chapter1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chapter 1"),
      ),
      body: ChapterExplanation(
        body: "Use FVM (flutter version manager) to manage multiple versions of flutter on your machine.",
        url: "https://www.youtube.com/watch?v=IdtramLtYVA&t=59s",
      ),
    );
  }
}
