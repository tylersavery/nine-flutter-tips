import 'package:flutter/material.dart';
import 'package:flutter_tips/screen_utils.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Chapter10 extends BaseScreen {
  const Chapter10({super.key});

  @override
  AppBar? appBar(BuildContext context) {
    return AppBar(
      title: Text("Chapter 10!"),
      actions: [
        IconButton(
          onPressed: () {
            launchUrlString("");
          },
          icon: Icon(Icons.open_in_new),
        )
      ],
    );
  }

  @override
  FloatingActionButton? floatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
    );
  }

  @override
  Widget body(BuildContext context) {
    return Center(child: Text("Hello!"));
  }

  @override
  Widget bodyMd(BuildContext context) {
    return Center(child: Text("Hello!!!!!!!"));
  }
}

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      floatingActionButton: floatingActionButton(context),
      body: Builder(
        builder: (context) {
          final size = ScreenUtils.size(context);
          switch (size) {
            case ScreenSize.lg:
              return bodyLg(context);
            case ScreenSize.md:
              return bodyMd(context);
            case ScreenSize.sm:
              return body(context);
          }
        },
      ),
    );
  }

  AppBar? appBar(BuildContext context) {
    return null;
  }

  FloatingActionButton? floatingActionButton(BuildContext context) {
    return null;
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
