import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ChapterExplanation extends StatelessWidget {
  final String body;
  final String url;
  final Widget? trailing;
  const ChapterExplanation({
    super.key,
    required this.body,
    required this.url,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              body,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                launchUrlString(url);
              },
              child: Text("Watch"),
            ),
            if (trailing != null) ...[
              SizedBox(height: 8),
              trailing!,
            ]
          ],
        ),
      ),
    );
  }
}
