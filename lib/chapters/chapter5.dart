import 'package:flutter/material.dart';
import 'package:flutter_tips/screen_utils.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Chapter5 extends StatelessWidget {
  const Chapter5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chapter 5"),
        actions: [
          IconButton(
            onPressed: () {
              launchUrlString("https://www.youtube.com/watch?v=IdtramLtYVA&t=1021s");
            },
            icon: Icon(Icons.open_in_new),
          )
        ],
      ),
      body: Chapter5Body(),
    );
  }
}

class Chapter5Body extends BaseComponent {
  const Chapter5Body({super.key});

  @override
  Widget body(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.red,
    );
  }

  @override
  Widget bodyMd(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
    );
  }

  @override
  Widget bodyLg(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.green,
    );
  }
}

class BaseComponent extends StatelessWidget {
  const BaseComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final size = ScreenUtils.size(context);
    switch (size) {
      case ScreenSize.lg:
        return bodyLg(context);
      case ScreenSize.md:
        return bodyMd(context);
      case ScreenSize.sm:
        return body(context);
    }
  }

  Widget body(BuildContext context) {
    return const SizedBox.shrink();
  }

  Widget bodyMd(BuildContext context) {
    return body(context);
  }

  Widget bodyLg(BuildContext context) {
    return body(context);
  }
}
