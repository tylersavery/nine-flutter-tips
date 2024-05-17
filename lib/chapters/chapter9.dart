import 'package:flutter/material.dart';

class Chapter9 extends StatelessWidget {
  const Chapter9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FutureBuilder(
            future: _getData(),
            builder: (context, snapshot) {
              return Stack(
                children: [
                  const Text("Chapter 9"),
                ],
              );
            }),
      ),
    );
  }

  Future<String> _getData() async {
    await Future.delayed(Duration(seconds: 5));
    return "Hello";
  }
}
