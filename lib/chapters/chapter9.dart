import 'package:flutter/material.dart';
import 'package:flutter_tips/chapter_explanation.dart';

class Chapter9 extends StatelessWidget {
  const Chapter9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FutureBuilder(
          future: _getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data != null) {
              return Stack(
                children: [
                  Text(snapshot.data!),
                ],
              );
            }

            return CircularProgressIndicator();
          },
        ),
      ),
      body: ChapterExplanation(
        body: "Just some nice tips for refactoring your widgets",
        url: "https://www.youtube.com/watch?v=IdtramLtYVA&t=2290s",
      ),
    );
  }

  Future<String> _getData() async {
    await Future.delayed(Duration(seconds: 5));
    return "Chapter 9";
  }
}
