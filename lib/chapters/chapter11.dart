import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:vector_math/vector_math.dart' as math;

class Chapter11 extends StatelessWidget {
  const Chapter11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chapter 11"),
        actions: [
          IconButton(
            onPressed: () {
              launchUrlString("");
            },
            icon: Icon(Icons.open_in_new),
          )
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final val = await showMyDialog(
              context,
              type: DialogTransitionType.drop,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Hello World!"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(false);
                          },
                          child: Text("No"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(true);
                          },
                          child: Text("Yes"),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );

            if (val) {
              print("YAY");
            } else {
              print("NO");
            }
          },
          child: Text("Tap me!"),
        ),
      ),
    );
  }
}

enum DialogTransitionType {
  spin,
  zoom,
  drop,
}

Future<bool> showMyDialog(BuildContext context, {required Widget child, required DialogTransitionType type}) async {
  final result = await showGeneralDialog(
    context: context,
    pageBuilder: (context, anim1, anim2) {
      return child;
    },
    barrierDismissible: true,
    barrierLabel: '',
    transitionDuration: Duration(milliseconds: 300),
    transitionBuilder: (context, anim1, anim2, widget) {
      switch (type) {
        case DialogTransitionType.spin:
          return Transform.rotate(
            angle: math.radians(anim1.value * 360),
            child: AlertDialog(
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.zero,
              content: child,
            ),
          );
        case DialogTransitionType.zoom:
          return Transform.scale(
            scale: anim1.value,
            child: AlertDialog(
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.zero,
              content: child,
            ),
          );
        case DialogTransitionType.drop:
          final curvedValue = Curves.easeInOutBack.transform(anim1.value) - 1.0;
          return Transform(
            transform: Matrix4.translationValues(0.0, curvedValue * 200, 0.0),
            child: Opacity(
              opacity: anim1.value,
              child: AlertDialog(
                contentPadding: EdgeInsets.zero,
                insetPadding: EdgeInsets.zero,
                content: child,
              ),
            ),
          );
      }
    },
  );

  return result == true;
}
