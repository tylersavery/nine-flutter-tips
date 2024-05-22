import 'package:flutter/material.dart';
import 'package:flutter_tips/env.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Chapter12 extends StatelessWidget {
  const Chapter12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chapter 12"),
        actions: [
          IconButton(
            onPressed: () {
              launchUrlString("");
            },
            icon: Icon(Icons.open_in_new),
          )
        ],
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(Env.name),
            subtitle: Text("Flavor Name"),
          ),
          if (Env.coolApiPublicKey != null)
            ListTile(
              title: Text(Env.coolApiPublicKey!),
              subtitle: Text("API Key"),
            ),
          if (Env.debugMode)
            ListTile(
              title: Text("YES!!"),
              subtitle: Text("Debug Mode"),
            )
        ],
      ),
    );
  }
}
