import 'package:flutter/material.dart';
import 'package:flutter_tips/chapter_explanation.dart';

class Chapter3 extends StatelessWidget {
  const Chapter3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chapter 3"),
      ),
      body: ChapterExplanation(
        body: "Some helpful analysis options for a good developer experience.",
        url: "https://www.youtube.com/watch?v=IdtramLtYVA&t=441s",
      ),
    );
  }
}
